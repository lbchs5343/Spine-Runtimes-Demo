(function () {
  var style = getComputedStyle(document.documentElement);
  var accent = style.getPropertyValue('--accent').trim();
  var accent2 = style.getPropertyValue('--accent2').trim();
  var warn = style.getPropertyValue('--warn').trim();
  var violet = style.getPropertyValue('--violet').trim();
  var ink = style.getPropertyValue('--ink').trim();
  var muted = style.getPropertyValue('--muted').trim();
  var rule = style.getPropertyValue('--rule').trim();
  var bg2 = style.getPropertyValue('--bg2').trim();
  var fontFamily = "'Outfit','PingFang SC','Microsoft YaHei','Noto Sans CJK SC',sans-serif";

  var baseText = { color: muted, fontFamily: fontFamily, fontSize: 11 };

  /* ===== 图 1：月度故障数 ===== */
  var months = ['2024-02','2024-03','2024-04','2024-05','2024-06','2024-07','2024-08','2024-09','2024-10','2024-11','2024-12',
                '2025-01','2025-02','2025-03','2025-04','2025-05','2025-06','2025-07','2025-08','2025-09','2025-10','2025-11','2025-12',
                '2026-01','2026-02','2026-03','2026-04','2026-05','2026-06','2026-07','2026-08','2026-09','2026-10'];
  var counts = [0,0,0,3,2,2,6,2,2,2,2,
                10,1,3,0,2,0,3,1,0,0,3,4,
                0,4,6,3,7,3,8,16,8,5];
  // 3 个月移动平均
  var ma = months.map(function (_, i) {
    if (i < 2) { return null; }
    var v = (counts[i - 2] + counts[i - 1] + counts[i]) / 3;
    return Math.round(v * 10) / 10;
  });

  var el1 = document.getElementById('chart-monthly');
  if (el1) {
    var c1 = echarts.init(el1, null, { renderer: 'svg' });
    c1.setOption({
      animation: false,
      grid: { left: 12, right: 16, top: 36, bottom: 4, containLabel: true },
      tooltip: { trigger: 'axis', appendToBody: true, textStyle: { fontFamily: fontFamily, fontSize: 12 } },
      legend: { top: 0, right: 0, itemWidth: 12, itemHeight: 8, textStyle: { color: muted, fontFamily: fontFamily, fontSize: 11 } },
      xAxis: {
        type: 'category', data: months,
        axisLabel: { rotate: 58, fontSize: 10, interval: 0, color: muted, fontFamily: fontFamily },
        axisLine: { lineStyle: { color: rule } }, axisTick: { show: false }
      },
      yAxis: {
        type: 'value', max: 16, interval: 4,
        axisLabel: baseText, splitLine: { lineStyle: { color: rule } }
      },
      series: [
        {
          name: '月度故障数', type: 'bar', data: counts, barMaxWidth: 16,
          itemStyle: {
            color: function (p) { return p.dataIndex === 31 ? accent2 : accent; },
            borderRadius: [2, 2, 0, 0]
          },
          label: { show: false }
        },
        {
          name: '3 个月移动平均', type: 'line', data: ma, symbol: 'circle',
          symbolSize: 4, lineStyle: { color: warn, width: 2 }, itemStyle: { color: warn },
          connectNulls: false
        }
      ]
    });
    window.addEventListener('resize', function () { c1.resize(); });
  }

  /* ===== 图 2：年度对比 ===== */
  var el2 = document.getElementById('chart-yearly');
  if (el2) {
    var c2 = echarts.init(el2, null, { renderer: 'svg' });
    c2.setOption({
      animation: false,
      grid: { left: 12, right: 12, top: 42, bottom: 4, containLabel: true },
      tooltip: { trigger: 'axis', appendToBody: true, textStyle: { fontFamily: fontFamily, fontSize: 12 } },
      legend: { top: 0, right: 0, itemWidth: 12, itemHeight: 8, textStyle: { color: muted, fontFamily: fontFamily, fontSize: 11 } },
      xAxis: {
        type: 'category', data: ['2024 年(2-12月)', '2025 年(全年)', '2026 年(至10-15, 含进行中)'],
        axisLabel: { color: ink, fontFamily: fontFamily, fontSize: 11, interval: 0 },
        axisLine: { lineStyle: { color: rule } }, axisTick: { show: false }
      },
      yAxis: [
        { type: 'value', name: '故障总数', nameTextStyle: baseText, max: 66, interval: 22, axisLabel: baseText, splitLine: { lineStyle: { color: rule } } },
        { type: 'value', name: '月均', nameTextStyle: baseText, max: 7, interval: 3.5, axisLabel: baseText, splitLine: { show: false } }
      ],
      series: [
        {
          name: '故障总数', type: 'bar', barMaxWidth: 52,
          data: [21, 27, 60],
          itemStyle: { color: accent, borderRadius: [3, 3, 0, 0] },
          label: { show: true, position: 'top', color: ink, fontFamily: fontFamily, fontWeight: 700, fontSize: 13 }
        },
        {
          name: '月均故障数', type: 'line', yAxisIndex: 1,
          data: [1.9, 2.25, 6.3], symbol: 'circle', symbolSize: 7,
          lineStyle: { color: accent2, width: 2 }, itemStyle: { color: accent2 },
          label: { show: true, position: 'top', color: accent2, fontFamily: fontFamily, fontSize: 11, formatter: '{c} 起/月' }
        }
      ]
    });
    window.addEventListener('resize', function () { c2.resize(); });
  }

  /* ===== 图 3：星期分布 ===== */
  var el3 = document.getElementById('chart-weekday');
  if (el3) {
    var c3 = echarts.init(el3, null, { renderer: 'svg' });
    c3.setOption({
      animation: false,
      grid: { left: 12, right: 12, top: 30, bottom: 4, containLabel: true },
      tooltip: { trigger: 'axis', appendToBody: true, textStyle: { fontFamily: fontFamily, fontSize: 12 } },
      xAxis: {
        type: 'category', data: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
        axisLabel: { color: ink, fontFamily: fontFamily, fontSize: 11 },
        axisLine: { lineStyle: { color: rule } }, axisTick: { show: false }
      },
      yAxis: { type: 'value', max: 24, interval: 6, axisLabel: baseText, splitLine: { lineStyle: { color: rule } } },
      series: [{
        name: '故障数', type: 'bar', data: [18, 23, 20, 17, 18, 5, 7], barMaxWidth: 32,
        itemStyle: {
          color: function (p) { return (p.dataIndex === 1 || p.dataIndex === 2) ? accent2 : accent; },
          borderRadius: [3, 3, 0, 0]
        },
        label: { show: true, position: 'top', color: muted, fontFamily: fontFamily, fontSize: 11 }
      }]
    });
    window.addEventListener('resize', function () { c3.resize(); });
  }

  /* ===== 图 4：类型构成 ===== */
  var el4 = document.getElementById('chart-type');
  if (el4) {
    var c4 = echarts.init(el4, null, { renderer: 'svg' });
    c4.setOption({
      animation: false,
      grid: { left: 12, right: 20, top: 46, bottom: 4, containLabel: true },
      tooltip: { trigger: 'axis', appendToBody: true, textStyle: { fontFamily: fontFamily, fontSize: 12 } },
      legend: {
        top: 0, right: 0, itemWidth: 12, itemHeight: 8,
        textStyle: { color: muted, fontFamily: fontFamily, fontSize: 11 }
      },
      xAxis: {
        type: 'category', data: ['2024 年（21 起）', '2025 年（27 起）', '2026 年（60 起）'],
        axisLabel: { color: ink, fontFamily: fontFamily, fontSize: 12, interval: 0 },
        axisLine: { lineStyle: { color: rule } }, axisTick: { show: false }
      },
      yAxis: { type: 'value', max: 60, interval: 15, axisLabel: baseText, splitLine: { lineStyle: { color: rule } } },
      series: [
        { name: '完全不可用', type: 'bar', stack: 'total', data: [18, 19, 4], barMaxWidth: 90, itemStyle: { color: accent2 } },
        { name: '性能下降', type: 'bar', stack: 'total', data: [3, 7, 47], itemStyle: { color: warn } },
        { name: '部分中断', type: 'bar', stack: 'total', data: [0, 0, 5], itemStyle: { color: accent } },
        { name: '功能故障', type: 'bar', stack: 'total', data: [0, 1, 4], itemStyle: { color: violet, borderRadius: [3, 3, 0, 0] } }
      ]
    });
    window.addEventListener('resize', function () { c4.resize(); });
  }

  /* ===== 图 5：持续时间分布 ===== */
  var el5 = document.getElementById('chart-duration');
  if (el5) {
    var durLabels = ['≤5 分钟', '6-15 分钟', '16-30 分钟', '31-60 分钟', '1-3 小时', '3-12 小时', '>12 小时'];
    var durData = [12, 33, 17, 32, 6, 4, 3];
    var c5 = echarts.init(el5, null, { renderer: 'svg' });
    c5.setOption({
      animation: false,
      grid: { left: 12, right: 20, top: 30, bottom: 4, containLabel: true },
      tooltip: {
        trigger: 'axis', appendToBody: true, textStyle: { fontFamily: fontFamily, fontSize: 12 },
        formatter: function (ps) {
          var p = ps[0];
          var total = 107;
          var pct = Math.round(p.value / total * 100);
          return p.name + '：' + p.value + ' 起（' + pct + '%）';
        }
      },
      xAxis: {
        type: 'category', data: durLabels,
        axisLabel: { color: ink, fontFamily: fontFamily, fontSize: 11, interval: 0 },
        axisLine: { lineStyle: { color: rule } }, axisTick: { show: false }
      },
      yAxis: { type: 'value', max: 36, interval: 9, axisLabel: baseText, splitLine: { lineStyle: { color: rule } } },
      series: [{
        name: '故障数', type: 'bar', data: durData, barMaxWidth: 52,
        itemStyle: {
          color: function (p) { return p.dataIndex === 6 ? accent2 : (p.dataIndex === 5 ? warn : accent); },
          borderRadius: [3, 3, 0, 0]
        },
        label: { show: true, position: 'top', color: ink, fontFamily: fontFamily, fontSize: 11, fontWeight: 600 }
      }]
    });
    window.addEventListener('resize', function () { c5.resize(); });
  }
})();
