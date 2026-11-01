package c.c;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.trinea.android.developertools.R;
import cn.trinea.developertools.MyApplication;
import g.awf;
import g.bnl;
import g.byh;
import g.dlb;
import g.dyd;
import g.ffb;
import g.zc;
import java.text.SimpleDateFormat;

/* loaded from: classes.dex */
public class o extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent != null) {
            String action = intent.getAction();
            if (TextUtils.isEmpty(action)) {
                return;
            }
            if (!"c.t.d.o.p.u".equals(action)) {
                if ("c.t.d.o.p.u.t".equals(action)) {
                    MyApplication.d(context);
                    return;
                } else {
                    if ("c.t.d.o.p.u.i".equals(action)) {
                        SimpleDateFormat simpleDateFormat = dlb.f14354a;
                        byh.ay(context, "op_accessed_time", Long.toString(System.currentTimeMillis()));
                        byh.bb(context, 0, "c");
                        ((NotificationManager) context.getSystemService("notification")).cancel(30001);
                        return;
                    }
                    return;
                }
            }
            if (!c.b.b.v(context) || !c.b.b.n(context)) {
                ffb.bn(context, "receive ignore1, isAllowOPUpdate: " + c.b.b.v(context) + ", isOPNotificationPeriod: " + c.b.b.n(context));
                return;
            }
            long longValue = byh.an(context, "op_accessed_time", context.getSharedPreferences("TrineaAndroidCommon", 0).getLong("op_accessed_time", 0L)).longValue();
            long longValue2 = byh.an(context, "op_checked_time", context.getSharedPreferences("TrineaAndroidCommon", 0).getLong("op_checked_time", 0L)).longValue();
            int av = byh.av(context, context.getSharedPreferences("TrineaAndroidCommon", 0).getInt("c", 0), "c");
            if (longValue > longValue2 || av <= 0) {
                StringBuilder l = awf.l(longValue, "receive ignore2, lastAccessedTime is ", ", opUpdateCheckedTime: ");
                l.append(longValue2);
                l.append(", diff is: ");
                l.append((longValue - longValue2) / 1000);
                l.append("s, opUpdateCount is ");
                l.append(av);
                ffb.bn(context, l.toString());
                return;
            }
            ffb.bn(context, "notification show");
            String num = av > 100 ? "100+" : Integer.toString(av);
            boolean z = av == 1;
            if (c.b.b.k(context, false).contains("bar")) {
                long longValue3 = byh.an(context, "op_update_noti_bar", context.getSharedPreferences("TrineaAndroidCommon", 0).getLong("op_update_noti_bar", 0L)).longValue();
                SimpleDateFormat simpleDateFormat2 = dlb.f14354a;
                if (System.currentTimeMillis() - longValue3 > c.b.b.i(context) * 60 * 1000) {
                    byh.ay(context, "op_update_noti_bar", Long.toString(System.currentTimeMillis()));
                    NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
                    String string = context.getString(R.string.noti_channel_update_op);
                    if (dyd.bp(26)) {
                        NotificationChannel q = bnl.q(string, string);
                        q.enableLights(true);
                        q.setLightColor(-16776961);
                        q.enableVibration(false);
                        notificationManager.createNotificationChannel(q);
                    }
                    int i = z ? R.string.op_update_title1 : R.string.op_update_title2;
                    zc zcVar = new zc(context, string);
                    zcVar.s.icon = R.drawable.noti_icon;
                    zcVar.u(16, true);
                    zcVar.r = PendingIntent.getActivity(context, (int) System.currentTimeMillis(), new Intent(context, (Class<?>) b.d.c.class).setAction("op_update_noti"), 201326592);
                    zcVar.f20386g = zc.t(context.getString(i, num));
                    zcVar.i = zc.t(context.getString(R.string.op_update_content));
                    notificationManager.notify(30001, zcVar.y());
                } else {
                    StringBuilder l2 = awf.l(longValue3, "show noti bar ignore, lastNotiBarTime is ", ", diff is: ");
                    l2.append(((System.currentTimeMillis() - longValue3) / 1000) / 60);
                    l2.append("min, freq is ");
                    l2.append(c.b.b.i(context));
                    ffb.bn(context, l2.toString());
                }
            }
            c.b.b.k(context, false).contains("inapp");
            c.b.b.k(context, false).contains("desk");
        }
    }
}
