import 'package:dcex/core/enums/futures_market_type.dart';
import 'package:dcex/features/contracts/presentation/providers/futures_market_provider.dart';
import 'package:dcex/features/contracts/presentation/screens/markets/coin_margin_trade_screen.dart';
import 'package:dcex/features/contracts/presentation/screens/markets/usdt_margin_trade_screen.dart';
import 'package:dcex/features/contracts/presentation/screens/markets/options_trade_screen.dart';
import 'package:dcex/features/contracts/presentation/screens/markets/smart_money_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

/// 主页面 - 包含市场类型切换
class FuturesMainPage extends ConsumerStatefulWidget {
  const FuturesMainPage({super.key});

  @override
  ConsumerState<FuturesMainPage> createState() => _FuturesMainPageState();
}

class _FuturesMainPageState extends ConsumerState<FuturesMainPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<FuturesMarketType> _markets = FuturesMarketType.values;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _markets.length, vsync: this);

    // 监听Tab切换，同步Riverpod状态
    _tabController.addListener(() {
      if (!_tabController.indexIsChanging) {
        ref
            .read(futureMarketTypeProvider.notifier)
            .change(_markets[_tabController.index]);
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final barHeight = 44.0;
    return SafeArea(
      child: Scaffold(
        body: NestedScrollView(
          // 外层滚动头部
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverOverlapAbsorber(
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(
                  context,
                ),
                sliver: SliverAppBar(
                  primary: true,
                  floating: true,
                  pinned: false,
                  snap: false,
                  toolbarHeight: barHeight,
                  forceElevated: innerBoxIsScrolled,
                  // Content
                  flexibleSpace: Container(
                    alignment: Alignment.bottomCenter,
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Theme.of(context).dividerColor,
                          width: 1,
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TabBar(
                            dividerColor: Colors
                                .transparent, // Hide it. Show The Sliver Bar Bottom Border
                            controller: _tabController,
                            isScrollable: true,
                            indicatorColor: Theme.of(
                              context,
                            ).colorScheme.primary,
                            indicator: UnderlineTabIndicator(
                              borderRadius: BorderRadius.circular(1),
                              borderSide: BorderSide(
                                color: Theme.of(context).colorScheme.primary,
                                width: 2,
                              ),
                              insets: const EdgeInsets.symmetric(horizontal: 8),
                            ),
                            indicatorSize: TabBarIndicatorSize.label,
                            indicatorAnimation: TabIndicatorAnimation.elastic,
                            tabAlignment: TabAlignment.start,
                            labelPadding: EdgeInsets.symmetric(horizontal: 8),
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            labelColor: Theme.of(context).colorScheme.onSurface,
                            unselectedLabelColor: Theme.of(
                              context,
                            ).colorScheme.onSurface.withValues(alpha: 0.6),
                            labelStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            unselectedLabelStyle: const TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                            ),
                            tabs: _markets
                                .map((market) => Tab(text: market.rawValue))
                                .toList(),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Theme.of(context).colorScheme.onSurface,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },

          // 内层滚动体（各个Tab页面）
          body: TabBarView(
            controller: _tabController,
            children: const [
              UsdtMarginTradeScreen(),
              CoinMarginTradeScreen(),
              OptionsTradeScreen(),
              SmartMoneyScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
