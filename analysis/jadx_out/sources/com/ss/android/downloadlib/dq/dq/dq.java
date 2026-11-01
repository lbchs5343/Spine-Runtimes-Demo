package com.ss.android.downloadlib.dq.dq;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.IBinder;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import com.ss.android.downloadlib.addownload.no;
import com.ss.android.downloadlib.dq.dq.ox;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class dq {
    private static String iw = "";
    private static volatile dq mn = null;
    private static String p = "";
    private static String s = "";
    public ox dq;
    private Context no;
    private boolean ia = true;
    private boolean kk = false;
    private volatile boolean o = false;
    private final List<Pair<d, p>> ig = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public final List<Object> f9217d = new ArrayList();
    private final ServiceConnection mp = new ServiceConnection() { // from class: com.ss.android.downloadlib.dq.dq.dq.1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (dq.this.ox) {
                try {
                    dq.this.dq(false);
                    dq.this.dq = ox.dq.dq(iBinder);
                    dq.this.ox();
                    Iterator<Object> it = dq.this.f9217d.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (dq.this.ox) {
                try {
                    dq.this.dq(false);
                    dq dqVar = dq.this;
                    dqVar.dq = null;
                    Iterator<Object> it = dqVar.f9217d.iterator();
                    while (it.hasNext()) {
                        it.next();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    };
    private String q = "";
    public final Object ox = new Object();

    private dq() {
    }

    public static dq dq() {
        if (mn == null) {
            synchronized (dq.class) {
                try {
                    if (mn == null) {
                        mn = new dq();
                    }
                } finally {
                }
            }
        }
        return mn;
    }

    public void d() {
        if (this.dq != null) {
            this.no.unbindService(this.mp);
            this.dq = null;
        }
        this.f9217d.clear();
        this.ig.clear();
    }

    public Intent dq(Context context) {
        Intent intent = new Intent();
        intent.setAction(p);
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        if (queryIntentServices == null || queryIntentServices.size() != 1) {
            return null;
        }
        Iterator<ResolveInfo> it = queryIntentServices.iterator();
        while (it.hasNext()) {
            ServiceInfo serviceInfo = it.next().serviceInfo;
            String str = serviceInfo.packageName;
            String str2 = serviceInfo.name;
            if (s.equals(str)) {
                ComponentName componentName = new ComponentName(str, str2);
                Intent intent2 = new Intent(intent);
                intent2.setComponent(componentName);
                return intent2;
            }
        }
        return null;
    }

    public void dq(d dVar, p pVar) {
        synchronized (this.ox) {
            try {
                dVar.s = iw;
                if (TextUtils.isEmpty(dVar.iw)) {
                    dVar.iw = this.q;
                }
                ox oxVar = this.dq;
                if (oxVar != null) {
                    try {
                        oxVar.dq(dVar, pVar);
                    } catch (RemoteException e2) {
                        e2.printStackTrace();
                    }
                } else if (p() || dq(this.no, this.kk)) {
                    this.ig.add(Pair.create(dVar, pVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public void dq(boolean z) {
        this.o = z;
    }

    public boolean dq(Context context, boolean z) {
        if (TextUtils.isEmpty(p)) {
            JSONObject kk = no.kk();
            String optString = kk.optString("s");
            p = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("q"), optString);
            s = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("u"), optString);
            iw = com.ss.android.socialbase.appdownloader.iw.ox.dq(kk.optString("w"), optString);
        }
        this.kk = z;
        if (context == null) {
            return true;
        }
        this.no = context.getApplicationContext();
        if (TextUtils.isEmpty(iw)) {
            iw = this.no.getPackageName();
        }
        if (this.dq != null || p()) {
            return true;
        }
        return this.no.bindService(dq(context), this.mp, 33);
    }

    public void ox() {
        for (Pair<d, p> pair : this.ig) {
            try {
                this.dq.dq((d) pair.first, (p) pair.second);
            } catch (RemoteException e2) {
                e2.printStackTrace();
            }
        }
        this.ig.clear();
    }

    public boolean p() {
        return this.o;
    }
}
