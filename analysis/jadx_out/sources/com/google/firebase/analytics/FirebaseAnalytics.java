package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import g.bhz;
import g.byh;
import g.chw;
import g.ckd;
import g.cyc;
import g.ejs;
import g.frp;
import g.ws;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes3.dex */
public final class FirebaseAnalytics {

    /* renamed from: a, reason: collision with root package name */
    public static volatile FirebaseAnalytics f9102a;

    /* renamed from: b, reason: collision with root package name */
    public final bhz f9103b;

    public FirebaseAnalytics(bhz bhzVar) {
        ckd.k(bhzVar);
        this.f9103b = bhzVar;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f9102a == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f9102a == null) {
                        f9102a = new FirebaseAnalytics(bhz.h(context, null, null, null));
                    }
                } finally {
                }
            }
        }
        return f9102a;
    }

    @Keep
    public static frp getScionFrontendApiImplementation(Context context, Bundle bundle) {
        bhz h = bhz.h(context, null, null, bundle);
        if (h == null) {
            return null;
        }
        return new ws(h);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            chw x = cyc.o().x();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            return (String) byh.aa(x);
        } catch (InterruptedException e2) {
            throw new IllegalStateException(e2);
        } catch (ExecutionException e3) {
            throw new IllegalStateException(e3.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        bhz bhzVar = this.f9103b;
        bhzVar.getClass();
        bhzVar.l(new ejs(bhzVar, activity, str, str2));
    }
}
