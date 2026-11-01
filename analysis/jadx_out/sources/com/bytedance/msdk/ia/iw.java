package com.bytedance.msdk.ia;

import android.content.Context;
import android.location.Location;
import android.location.LocationListener;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class iw {

    /* renamed from: d, reason: collision with root package name */
    private static Handler f1090d = new Handler(Looper.getMainLooper());
    private static long dq = 1800000;

    public static class dq implements Callable<Location> {

        /* renamed from: d, reason: collision with root package name */
        private String f1094d;
        private LocationManager dq;

        public dq(LocationManager locationManager, String str) {
            this.dq = locationManager;
            this.f1094d = str;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Location call() throws Exception {
            long currentTimeMillis = System.currentTimeMillis();
            Location lastKnownLocation = this.dq.getLastKnownLocation(this.f1094d);
            com.bytedance.msdk.dq.s.ox.dq("AdLocationUtils", "location:" + lastKnownLocation + ",getLastKnownLocation use time :" + (System.currentTimeMillis() - currentTimeMillis));
            return lastKnownLocation;
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
    public static void d(Context context, Location location) {
        if (d(location)) {
            bl dq2 = bl.dq((String) null, context);
            dq2.dq("latitude", (float) location.getLatitude());
            dq2.dq("longitude", (float) location.getLongitude());
            dq2.dq("lbstime", System.currentTimeMillis());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void d(final Context context, final LocationManager locationManager) {
        if (context == null || locationManager == null) {
            return;
        }
        final LocationListener locationListener = new LocationListener() { // from class: com.bytedance.msdk.ia.iw.2
            @Override // android.location.LocationListener
            public void onLocationChanged(Location location) {
                if (location != null && iw.d(location)) {
                    iw.d(context, location);
                }
                iw.d(locationManager, this);
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
            String d2 = d(locationManager);
            if (TextUtils.isEmpty(d2)) {
                return;
            }
            locationManager.requestSingleUpdate(d2, locationListener, Looper.getMainLooper());
            f1090d.postDelayed(new Runnable() { // from class: com.bytedance.msdk.ia.iw.3
                @Override // java.lang.Runnable
                public void run() {
                    iw.d(locationManager, locationListener);
                }
            }, 30000L);
        } catch (Throwable th) {
            if (com.bytedance.msdk.dq.s.ox.d()) {
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
            if (com.bytedance.msdk.dq.s.ox.d()) {
                th.printStackTrace();
            }
        }
    }

    private static boolean d(Context context) {
        long d2 = bl.dq((String) null, context).d("lbstime", -1L);
        return d2 == -1 || System.currentTimeMillis() - d2 > dq;
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

    private static Location dq(LocationManager locationManager, String str) {
        try {
            FutureTask futureTask = new FutureTask(new dq(locationManager, str));
            com.bytedance.msdk.dq.s.iw.p(futureTask);
            Location location = (Location) futureTask.get(1L, TimeUnit.SECONDS);
            com.bytedance.msdk.dq.s.ox.dq("AdLocationUtils", "location:".concat(String.valueOf(location)));
            return location;
        } catch (Throwable unused) {
            return null;
        }
    }

    public static s dq(Context context) {
        if (!com.bytedance.msdk.core.d.no().bl().dq()) {
            return null;
        }
        Context context2 = context == null ? com.bytedance.msdk.core.dq.getContext() : context.getApplicationContext();
        if (context2 == null) {
            return null;
        }
        s ox = ox(context2);
        if (!d(context2)) {
            return ox;
        }
        int dq2 = com.bytedance.msdk.core.q.ox.dq(context2, "android.permission.ACCESS_FINE_LOCATION");
        int dq3 = com.bytedance.msdk.core.q.ox.dq(context2, "android.permission.ACCESS_COARSE_LOCATION");
        if (dq2 == 0 || dq3 == 0) {
            return p(context2);
        }
        return null;
    }

    private static s ox(Context context) {
        bl dq2 = bl.dq((String) null, context);
        float d2 = dq2.d("latitude", -1.0f);
        float d3 = dq2.d("longitude", -1.0f);
        if (d2 == -1.0f || d3 == -1.0f) {
            return null;
        }
        return new s(d2, d3);
    }

    private static s p(final Context context) {
        final LocationManager locationManager = (LocationManager) context.getSystemService("location");
        s sVar = null;
        if (locationManager != null) {
            try {
                Location dq2 = dq(locationManager);
                if (dq2 != null && d(dq2)) {
                    d(context, dq2);
                    sVar = new s((float) dq2.getLatitude(), (float) dq2.getLongitude());
                }
                if (Looper.myLooper() != Looper.getMainLooper()) {
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.msdk.ia.iw.1
                        @Override // java.lang.Runnable
                        public void run() {
                            iw.d(context, locationManager);
                        }
                    });
                    return sVar;
                }
                d(context, locationManager);
                return sVar;
            } catch (Throwable th) {
                if (com.bytedance.msdk.dq.s.ox.d()) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }
}
