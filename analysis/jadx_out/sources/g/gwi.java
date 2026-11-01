package g;

import android.os.Process;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes3.dex */
public final class gwi extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public boolean f18874a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ fth f18875b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f18876c;

    /* renamed from: d, reason: collision with root package name */
    public final BlockingQueue f18877d;

    public gwi(fth fthVar, String str, BlockingQueue blockingQueue) {
        this.f18875b = fthVar;
        ckd.k(blockingQueue);
        this.f18876c = new Object();
        this.f18877d = blockingQueue;
        setName(str);
    }

    public final void e() {
        synchronized (this.f18876c) {
            this.f18876c.notifyAll();
        }
    }

    public final void f() {
        synchronized (this.f18875b.f17375g) {
            try {
                if (!this.f18874a) {
                    this.f18875b.h.release();
                    this.f18875b.f17375g.notifyAll();
                    fth fthVar = this.f18875b;
                    if (this == fthVar.j) {
                        fthVar.j = null;
                    } else if (this == fthVar.k) {
                        fthVar.k = null;
                    } else {
                        bgm bgmVar = ((cyg) fthVar.z).z;
                        cyg.ak(bgmVar);
                        bgmVar.f11518b.h("Current scheduler thread is neither worker nor network");
                    }
                    this.f18874a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        boolean z = false;
        while (!z) {
            try {
                this.f18875b.h.acquire();
                z = true;
            } catch (InterruptedException e2) {
                bgm bgmVar = ((cyg) this.f18875b.z).z;
                cyg.ak(bgmVar);
                bgmVar.f11520g.i(e2, String.valueOf(getName()).concat(" was interrupted"));
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                gfi gfiVar = (gfi) this.f18877d.poll();
                if (gfiVar != null) {
                    Process.setThreadPriority(true != gfiVar.f18025d ? 10 : threadPriority);
                    gfiVar.run();
                } else {
                    synchronized (this.f18876c) {
                        if (this.f18877d.peek() == null) {
                            try {
                                this.f18876c.wait(30000L);
                            } catch (InterruptedException e3) {
                                bgm bgmVar2 = ((cyg) this.f18875b.z).z;
                                cyg.ak(bgmVar2);
                                bgmVar2.f11520g.i(e3, String.valueOf(getName()).concat(" was interrupted"));
                            }
                        }
                    }
                    synchronized (this.f18875b.f17375g) {
                        if (this.f18877d.peek() == null) {
                            f();
                            f();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th) {
            f();
            throw th;
        }
    }
}
