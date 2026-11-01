package g;

import android.os.Process;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes3.dex */
public final class gzk extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f19053a = 1;

    public /* synthetic */ gzk(Runnable runnable) {
        super(runnable);
    }

    public /* synthetic */ gzk(String str) {
        super(str);
    }

    public /* synthetic */ gzk(ThreadGroup threadGroup, String str) {
        super(threadGroup, str);
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        ReentrantLock reentrantLock;
        boo bc;
        switch (this.f19053a) {
            case 0:
                break;
            case 1:
                Process.setThreadPriority(10);
                super.run();
                return;
            default:
                Process.setThreadPriority(19);
                synchronized (this) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException unused) {
                            return;
                        }
                    }
                }
        }
        while (true) {
            try {
                reentrantLock = boo.f11911d;
                reentrantLock.lock();
                try {
                    bc = erl.bc();
                } catch (Throwable th) {
                    reentrantLock.unlock();
                    throw th;
                }
            } catch (InterruptedException unused2) {
                continue;
            }
            if (bc == boo.f11913f) {
                boo.f11913f = null;
                reentrantLock.unlock();
                return;
            } else {
                reentrantLock.unlock();
                if (bc != null) {
                    bc.c();
                }
            }
        }
    }
}
