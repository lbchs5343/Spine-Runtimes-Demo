package g;

import android.os.Handler;
import android.os.Message;
import android.os.Process;
import java.lang.ref.ReferenceQueue;

/* loaded from: classes3.dex */
public final class np extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final ReferenceQueue f19717a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f19718b;

    public np(ReferenceQueue referenceQueue, Handler handler) {
        this.f19717a = referenceQueue;
        this.f19718b = handler;
        setDaemon(true);
        setName("Picasso-refQueue");
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        Handler handler = this.f19718b;
        Process.setThreadPriority(10);
        while (true) {
            try {
                bvu bvuVar = (bvu) this.f19717a.remove(1000L);
                Message obtainMessage = handler.obtainMessage();
                if (bvuVar != null) {
                    obtainMessage.what = 3;
                    obtainMessage.obj = bvuVar.f12288a;
                    handler.sendMessage(obtainMessage);
                } else {
                    obtainMessage.recycle();
                }
            } catch (InterruptedException unused) {
                return;
            } catch (Exception e2) {
                handler.post(new byd(22, e2));
                return;
            }
        }
    }
}
