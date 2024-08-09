from dbt.context import context

def model(dbt, session):
    # 获取引用的表数据
    df = context.ref('day')
    
    # 数据处理：计算 min_temp, max_temp, mean_temp, total_casual, total_registered, total_cnt
    month_trend_df = (
        df.groupby('mnth')
        .agg(
            min_temp=('temp', lambda x: (x * 47 + 8).min()),
            max_temp=('temp', lambda x: (x * 47 + 8).max()),
            mean_temp=('temp', lambda x: (x * 47 + 8).mean()),
            total_casual=('casual', 'sum'),
            total_registered=('registered', 'sum'),
            total_cnt=('cnt', 'sum')
        )
        .reset_index()
    )

    return month_trend_df
