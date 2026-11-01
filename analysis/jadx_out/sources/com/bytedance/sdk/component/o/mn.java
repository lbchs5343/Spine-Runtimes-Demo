package com.bytedance.sdk.component.o;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public class mn extends iw {

    /* renamed from: d, reason: collision with root package name */
    public static dq f2028d;
    public static final int dq = Runtime.getRuntime().availableProcessors();
    public static boolean ox = true;
    public static int p = 120;

    public static ThreadPoolExecutor d() {
        return no.f2029d.kk();
    }

    public static void d(kk kkVar) {
        dq().execute(kkVar);
    }

    public static void d(kk kkVar, int i) {
        kkVar.dq(i);
        no.f2029d.ig().execute(kkVar);
    }

    public static ExecutorService dq() {
        return no.f2029d.ig();
    }

    public static void dq(int i) {
        p = i;
    }

    public static void dq(dq dqVar) {
        f2028d = dqVar;
    }

    public static void dq(kk kkVar) {
        kkVar.dq(10);
        no.f2029d.o().execute(kkVar);
    }

    public static void dq(kk kkVar, int i) {
        kkVar.dq(i);
        no.f2029d.ig().execute(kkVar);
    }

    public static void dq(boolean z) {
        ox = z;
    }

    public static ExecutorService ox() {
        return dq();
    }

    public static void ox(kk kkVar) {
        d().execute(kkVar);
    }

    public static ScheduledExecutorService p() {
        return no.f2029d.no();
    }

    public static void p(kk kkVar) {
        no.f2029d.ig().execute(kkVar);
    }

    public static void s(kk kkVar) {
        no.f2029d.o().execute(kkVar);
    }

    public static boolean s() {
        return ox;
    }
}
