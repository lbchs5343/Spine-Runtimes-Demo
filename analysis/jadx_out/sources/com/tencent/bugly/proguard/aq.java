package com.tencent.bugly.proguard;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import g.gfh;

/* loaded from: classes.dex */
public final class aq extends BroadcastReceiver {

    /* renamed from: d, reason: collision with root package name */
    private static aq f9602d;

    /* renamed from: b, reason: collision with root package name */
    private Context f9604b;

    /* renamed from: c, reason: collision with root package name */
    private String f9605c;

    /* renamed from: e, reason: collision with root package name */
    private boolean f9606e = true;

    /* renamed from: a, reason: collision with root package name */
    private IntentFilter f9603a = new IntentFilter();

    public static synchronized aq a() {
        aq aqVar;
        synchronized (aq.class) {
            try {
                if (f9602d == null) {
                    f9602d = new aq();
                }
                aqVar = f9602d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return aqVar;
    }

    private synchronized boolean a(Context context, Intent intent) {
        if (context != null && intent != null) {
            if (intent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE")) {
                if (this.f9606e) {
                    this.f9606e = false;
                    return true;
                }
                String c2 = ab.c(this.f9604b);
                al.c("is Connect BC ".concat(String.valueOf(c2)), new Object[0]);
                al.a("network %s changed to %s", this.f9605c, String.valueOf(c2));
                if (c2 == null) {
                    this.f9605c = null;
                    return true;
                }
                String str = this.f9605c;
                this.f9605c = c2;
                long currentTimeMillis = System.currentTimeMillis();
                ac a2 = ac.a();
                ai a3 = ai.a();
                aa a4 = aa.a(context);
                if (a2 != null && a3 != null && a4 != null) {
                    if (!c2.equals(str) && currentTimeMillis - a3.a(at.f9620a) > 30000) {
                        al.a("try to upload crash on network changed.", new Object[0]);
                        at a5 = at.a();
                        if (a5 != null) {
                            a5.a(0L);
                        }
                        al.a("try to upload userinfo on network changed.", new Object[0]);
                        s.f9789b.b();
                    }
                    return true;
                }
                al.d("not inited BC not work", new Object[0]);
                return true;
            }
        }
        return false;
    }

    public final synchronized void a(Context context) {
        this.f9604b = context;
        ap.a(new gfh(28, this, this, false));
    }

    public final synchronized void a(String str) {
        try {
            if (!this.f9603a.hasAction(str)) {
                this.f9603a.addAction(str);
            }
            al.c("add action %s", str);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(Context context) {
        try {
            al.a(aq.class, "Unregister broadcast receiver of Bugly.", new Object[0]);
            context.unregisterReceiver(this);
            this.f9604b = context;
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        try {
            a(context, intent);
        } catch (Throwable th) {
            if (al.a(th)) {
                return;
            }
            th.printStackTrace();
        }
    }
}
