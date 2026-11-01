package com.bytedance.sdk.component.panglearmor;

import android.app.Activity;
import android.app.Application;
import android.util.ArrayMap;
import com.bytedance.android.live.base.api.push.model.PushUIConfig;
import com.bytedance.pangle.annotations.ForbidWrapParam;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class ox {
    private static volatile ox dq;

    /* renamed from: d, reason: collision with root package name */
    private final ArrayList<String> f2185d = new ArrayList<>();
    private final AtomicBoolean ox = new AtomicBoolean(false);
    private long p = System.currentTimeMillis();
    private long s = 0;
    private long iw = 0;
    private String mn = "";
    private String ia = "";
    private String kk = "";
    private boolean o = false;
    private boolean no = false;

    public static ox dq(Application application) {
        if (dq == null) {
            synchronized (ox.class) {
                try {
                    if (dq == null) {
                        ox oxVar = new ox();
                        dq = oxVar;
                        oxVar.o = o.dq(application);
                        dq.no = o.dq(application.getApplicationContext(), "android.permission.SYSTEM_ALERT_WINDOW") == 0;
                        dq.dq();
                    }
                } finally {
                }
            }
        }
        return dq;
    }

    private void dq() {
        int size;
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Method declaredMethod = cls.getDeclaredMethod("currentActivityThread", null);
            boolean z = true;
            declaredMethod.setAccessible(true);
            Object invoke = declaredMethod.invoke(null, null);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(invoke);
            if (arrayMap != null && (size = arrayMap.size()) > 0) {
                Class<?> cls2 = Class.forName("android.app.ActivityThread$ActivityClientRecord");
                Field declaredField2 = cls2.getDeclaredField("stopped");
                declaredField2.setAccessible(true);
                Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                declaredField3.setAccessible(true);
                for (int i = 0; i < size; i++) {
                    Object valueAt = arrayMap.valueAt(i);
                    if (!((Boolean) declaredField2.get(valueAt)).booleanValue()) {
                        String localClassName = ((Activity) declaredField3.get(valueAt)).getLocalClassName();
                        if (!this.f2185d.contains(localClassName)) {
                            this.f2185d.add(localClassName);
                        }
                    }
                }
                AtomicBoolean atomicBoolean = this.ox;
                if (this.f2185d.size() > 0) {
                    z = false;
                }
                atomicBoolean.set(z);
            }
        } catch (Exception unused) {
        }
    }

    public void d(@ForbidWrapParam Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.f2185d.contains(localClassName)) {
            this.f2185d.remove(localClassName);
        }
        if (this.f2185d.size() == 0) {
            this.p = System.currentTimeMillis();
            this.ox.set(true);
            this.ia = localClassName;
        }
    }

    public String dq(String str, long j, int i, boolean z) {
        String str2;
        long currentTimeMillis = System.currentTimeMillis();
        long j2 = currentTimeMillis - this.s;
        long j3 = currentTimeMillis - j;
        int i2 = j3 < 500 ? 1 : 0;
        if (this.ox.get() && this.no) {
            i2 |= 2;
        }
        if (!this.ox.get() && this.iw >= PushUIConfig.dismissTime && j2 < 1000) {
            i2 = this.ia.equals(this.kk) ? i2 | 4 : i2 | 8;
        }
        try {
            str2 = new JSONObject().put("rst", i2).put("bakdur", this.iw).put("popt", j2).put("uct", j3).put("isbak", this.ox).put("alert", this.no).put("rit", i).put(TTDownloadField.TT_TAG, str).put("sys", this.o).put("size", this.f2185d.size()).put("mutipro", z).toString();
        } catch (JSONException unused) {
            str2 = "";
        }
        this.mn = "";
        this.iw = 0L;
        this.s = 0L;
        this.p = System.currentTimeMillis();
        return str2;
    }

    public void dq(@ForbidWrapParam Activity activity) {
        String localClassName = activity.getLocalClassName();
        if (this.f2185d.size() == 0) {
            this.mn = localClassName;
            this.s = System.currentTimeMillis();
            this.iw = System.currentTimeMillis() - this.p;
            this.ox.set(false);
        }
        if (!this.f2185d.contains(localClassName)) {
            this.f2185d.add(localClassName);
        }
        this.kk = localClassName;
    }
}
