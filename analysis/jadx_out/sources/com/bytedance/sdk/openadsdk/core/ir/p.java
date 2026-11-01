package com.bytedance.sdk.openadsdk.core.ir;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public class p {

    /* renamed from: d, reason: collision with root package name */
    private static long f3072d = 60000;
    private static long dq = 1800000;
    private static volatile ox ox;
    private static volatile long p;
    private static volatile long s;

    public static class d implements Callable<Location> {

        /* renamed from: d, reason: collision with root package name */
        private String f3075d;
        private LocationManager dq;

        public d(LocationManager locationManager, String str) {
            this.dq = locationManager;
            this.f3075d = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Location call() throws Exception {
            System.currentTimeMillis();
            Location lastKnownLocation = this.dq.getLastKnownLocation(this.f3075d);
            System.currentTimeMillis();
            return lastKnownLocation;
        }
    }

    public static class dq implements Callable<com.bytedance.sdk.openadsdk.f.d.ox.ox> {
        private dq() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public com.bytedance.sdk.openadsdk.f.d.ox.ox call() throws Exception {
            return com.bytedance.sdk.openadsdk.core.no.ia().kk().ia();
        }
    }

    private static String d(LocationManager locationManager) {
        if (locationManager.isProviderEnabled("gps")) {
            return "gps";
        }
        if (locationManager.isProviderEnabled("network")) {
            return "network";
        }
        if (locationManager.isProviderEnabled("passive")) {
            return "passive";
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(Context context, final LocationManager locationManager) {
        if (context == null || locationManager == null) {
            return;
        }
        final LocationListener locationListener = new LocationListener() { // from class: com.bytedance.sdk.openadsdk.core.ir.p.5
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location != null) {
                    p.d(location);
                }
                p.d(locationManager, this);
            }

            @Override // android.location.LocationListener
            public void onProviderDisabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onProviderEnabled(String str) {
            }

            @Override // android.location.LocationListener
            public void onStatusChanged(String str, int i, Bundle bundle) {
            }
        };
        try {
            if (TextUtils.isEmpty(d(locationManager))) {
                return;
            }
            locationManager.requestSingleUpdate("network", locationListener, Looper.myLooper());
            com.bytedance.sdk.component.utils.ia.dq().postDelayed(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.p.6
                @Override // java.lang.Runnable
                public void run() {
                    p.d(locationManager, locationListener);
                }
            }, 30000L);
        } catch (Throwable th) {
            if (com.bytedance.sdk.component.utils.ig.ox()) {
                th.printStackTrace();
            }
            d(locationManager, locationListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(LocationManager locationManager, LocationListener locationListener) {
        if (locationManager == null || locationListener == null) {
            return;
        }
        try {
            locationManager.removeUpdates(locationListener);
        } catch (Throwable th) {
            if (com.bytedance.sdk.component.utils.ig.ox()) {
                th.printStackTrace();
            }
        }
    }

    private static boolean d() {
        return System.currentTimeMillis() - p > f3072d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean d(Location location) {
        return (location.getLatitude() == 0.0d || location.getLongitude() == 0.0d) ? false : true;
    }

    private static Location dq(LocationManager locationManager) {
        Location dq2 = dq(locationManager, "gps");
        if (dq2 == null) {
            dq2 = dq(locationManager, "network");
        }
        return dq2 == null ? dq(locationManager, "passive") : dq2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static Location dq(LocationManager locationManager, String str) {
        try {
            final com.bytedance.sdk.component.o.ia iaVar = new com.bytedance.sdk.component.o.ia(new d(locationManager, str), 1, 2);
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("getLastKnownLocation") { // from class: com.bytedance.sdk.openadsdk.core.ir.p.3
                @Override // java.lang.Runnable
                public void run() {
                    iaVar.run();
                }
            });
            return (Location) iaVar.get(1L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static ox dq(Context context) {
        return dq(context, !com.bytedance.sdk.openadsdk.core.ox.dq.d());
    }

    public static ox dq(Context context, boolean z) {
        if ((ox != null && !dq()) || !d()) {
            return ox;
        }
        String ox2 = com.bytedance.sdk.component.utils.dq.ox(com.bytedance.sdk.openadsdk.core.ox.p.dq().p("new_sdk_ad_location", 2147483647L));
        if (ox2 != null) {
            try {
                JSONObject jSONObject = new JSONObject(ox2);
                String optString = jSONObject.optString("latitude");
                String optString2 = jSONObject.optString("longitude");
                long optLong = jSONObject.optLong("lbstime");
                if (!TextUtils.isEmpty(optString) && !TextUtils.isEmpty(optString2)) {
                    ox = new ox(Float.valueOf(optString).floatValue(), Float.valueOf(optString2).floatValue(), optLong);
                    s = optLong;
                }
            } catch (Throwable th) {
                th.printStackTrace();
            }
            if (z) {
                return ox;
            }
        }
        if (ox != null && !dq()) {
            return ox;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.p kk = com.bytedance.sdk.openadsdk.core.no.ia().kk();
        if (kk.dq()) {
            s = System.currentTimeMillis();
            p = System.currentTimeMillis();
            final Context context2 = context == null ? com.bytedance.sdk.openadsdk.core.wp.getContext() : context.getApplicationContext();
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("getLocation c") { // from class: com.bytedance.sdk.openadsdk.core.ir.p.1
                @Override // java.lang.Runnable
                public void run() {
                    ox ox3 = p.ox(context2);
                    long unused = p.p = 0L;
                    if (ox3 != null) {
                        ox unused2 = p.ox = ox3;
                        try {
                            JSONObject jSONObject2 = new JSONObject();
                            jSONObject2.put("latitude", Float.toString(ox3.dq));
                            jSONObject2.put("longitude", Float.toString(ox3.f3071d));
                            jSONObject2.put("lbstime", ox3.ox);
                            String jSONObject3 = jSONObject2.toString();
                            String d2 = com.bytedance.sdk.component.utils.dq.d(jSONObject3);
                            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("sdk_ad_location", jSONObject3);
                            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("new_sdk_ad_location", d2);
                        } catch (JSONException e2) {
                            e2.printStackTrace();
                        }
                    }
                }
            });
            return ox;
        }
        com.bytedance.sdk.openadsdk.f.d.ox.ox ia = kk.ia();
        if (ia != null) {
            s = System.currentTimeMillis();
            ox = new ox((float) ia.dq(), (float) ia.d(), System.currentTimeMillis());
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (ox != null) {
                jSONObject2.put("latitude", Float.toString(ox.dq));
                jSONObject2.put("longitude", Float.toString(ox.f3071d));
                jSONObject2.put("lbstime", ox.ox);
            }
            String jSONObject3 = jSONObject2.toString();
            String d2 = com.bytedance.sdk.component.utils.dq.d(jSONObject3);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("sdk_ad_location", jSONObject3);
            com.bytedance.sdk.openadsdk.core.ox.p.dq().p("new_sdk_ad_location", d2);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return ox;
    }

    private static boolean dq() {
        return System.currentTimeMillis() - s > dq;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ox ox(final Context context) {
        ox oxVar = null;
        if (!com.bytedance.sdk.openadsdk.core.no.ia().kk().dq()) {
            try {
                com.bytedance.sdk.openadsdk.f.d.ox.ox ox2 = ox();
                if (ox2 != null) {
                    return new ox(Double.valueOf(ox2.dq()).floatValue(), Double.valueOf(ox2.d()).floatValue(), System.currentTimeMillis());
                }
            } catch (Throwable unused) {
            }
            return null;
        }
        final LocationManager p2 = p(context);
        if (p2 != null) {
            try {
                Location dq2 = dq(p2);
                if (dq2 != null && d(dq2)) {
                    oxVar = new ox((float) dq2.getLatitude(), (float) dq2.getLongitude(), System.currentTimeMillis());
                }
                com.bytedance.sdk.component.utils.ia.dq().post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.ir.p.2
                    @Override // java.lang.Runnable
                    public void run() {
                        p.d(context, p2);
                    }
                });
                return oxVar;
            } catch (Throwable th) {
                if (com.bytedance.sdk.component.utils.ig.ox()) {
                    th.printStackTrace();
                }
            }
        }
        return oxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static com.bytedance.sdk.openadsdk.f.d.ox.ox ox() {
        try {
            final com.bytedance.sdk.component.o.ia iaVar = new com.bytedance.sdk.component.o.ia(new dq(), 1, 2);
            com.bytedance.sdk.component.o.mn.d(new com.bytedance.sdk.component.o.kk("getLastKnownLocation") { // from class: com.bytedance.sdk.openadsdk.core.ir.p.4
                @Override // java.lang.Runnable
                public void run() {
                    iaVar.run();
                }
            });
            return (com.bytedance.sdk.openadsdk.f.d.ox.ox) iaVar.get(1L, TimeUnit.SECONDS);
        } catch (Throwable unused) {
            return null;
        }
    }

    private static LocationManager p(Context context) {
        try {
            return (LocationManager) context.getSystemService("location");
        } catch (Exception unused) {
            return null;
        }
    }
}
