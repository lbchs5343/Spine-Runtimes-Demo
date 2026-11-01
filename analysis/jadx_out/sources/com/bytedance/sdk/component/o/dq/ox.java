package com.bytedance.sdk.component.o.dq;

import com.bytedance.sdk.component.o.kk;
import com.bytedance.sdk.component.utils.ig;

/* loaded from: classes.dex */
public class ox implements Comparable<ox>, Runnable {

    /* renamed from: d, reason: collision with root package name */
    private iw f2024d;
    public final Runnable dq;
    private boolean ox = true;
    private boolean p = true;

    public ox(Runnable runnable) {
        this.dq = runnable;
    }

    public ox(Runnable runnable, iw iwVar) {
        this.dq = runnable;
        this.f2024d = iwVar;
    }

    private void ox(boolean z) {
        iw iwVar = this.f2024d;
        if (iwVar != null) {
            iwVar.dq(this, z);
        }
    }

    public void d(boolean z) {
        this.p = z;
    }

    @Override // java.lang.Comparable
    /* renamed from: dq, reason: merged with bridge method [inline-methods] */
    public int compareTo(ox oxVar) {
        Class<?> cls = this.dq.getClass();
        Class<?> cls2 = oxVar.dq.getClass();
        if (!cls.isAssignableFrom(cls2) && !cls2.isAssignableFrom(cls)) {
            return 0;
        }
        Runnable runnable = this.dq;
        if (!(runnable instanceof Comparable)) {
            return 0;
        }
        Runnable runnable2 = oxVar.dq;
        if (runnable2 instanceof Comparable) {
            return ((Comparable) runnable).compareTo(runnable2);
        }
        return 0;
    }

    public Runnable dq() {
        return this.dq;
    }

    public void dq(iw iwVar) {
        this.f2024d = iwVar;
    }

    public void dq(boolean z) {
        this.ox = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Thread currentThread = Thread.currentThread();
        int priority = currentThread.getPriority();
        Runnable runnable = this.dq;
        if (runnable instanceof kk) {
            try {
                currentThread.setPriority(Math.min(((kk) runnable).dq(), 10));
            } catch (Throwable th) {
                ig.d("BizRunnable", th);
            }
        }
        this.dq.run();
        try {
            currentThread.setPriority(priority);
        } catch (Throwable th2) {
            ig.d("BizRunnable", th2);
        }
        ox(false);
    }
}
