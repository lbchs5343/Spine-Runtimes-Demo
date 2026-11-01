package g;

import android.os.Handler;
import android.os.ParcelFileDescriptor;
import androidx.work.impl.WorkDatabase;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final /* synthetic */ class akt implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f10411a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10412b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f10413c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f10414d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f10415e;

    public /* synthetic */ akt(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.f10414d = i;
        this.f10415e = obj;
        this.f10411a = obj2;
        this.f10412b = obj3;
        this.f10413c = obj4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f10414d) {
            case 0:
                List list = (List) this.f10415e;
                gxm gxmVar = (gxm) this.f10411a;
                flk flkVar = (flk) this.f10412b;
                WorkDatabase workDatabase = (WorkDatabase) this.f10413c;
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    ((giw) it.next()).q(gxmVar.f18956a);
                }
                fje.c(flkVar, workDatabase, list);
                break;
            case 1:
                ark arkVar = (ark) this.f10415e;
                gnl gnlVar = (gnl) this.f10411a;
                anf anfVar = (anf) this.f10412b;
                euq euqVar = (euq) this.f10413c;
                Handler handler = arkVar.m;
                if (!gnlVar.f18457c.get()) {
                    try {
                        handler.post(new akt(arkVar, euqVar, gnlVar, gnlVar.f18455a._bj(anfVar), 2));
                        break;
                    } catch (Exception e2) {
                        handler.post(new akt(arkVar, euqVar, gnlVar, e2, 3));
                        return;
                    }
                }
                break;
            case 2:
                ark arkVar2 = (ark) this.f10415e;
                euq euqVar2 = (euq) this.f10411a;
                gnl gnlVar2 = (gnl) this.f10412b;
                arkVar2.m.removeCallbacks(euqVar2);
                arkVar2.p.remove(gnlVar2);
                boolean compareAndSet = gnlVar2.f18457c.compareAndSet(false, true);
                Object obj = this.f10413c;
                if (compareAndSet) {
                    gnlVar2.f18456b.onSuccess(obj);
                    break;
                } else if (obj instanceof ParcelFileDescriptor) {
                    try {
                        ((ParcelFileDescriptor) obj).close();
                        break;
                    } catch (IOException unused) {
                        return;
                    }
                }
                break;
            default:
                ark arkVar3 = (ark) this.f10415e;
                euq euqVar3 = (euq) this.f10411a;
                gnl gnlVar3 = (gnl) this.f10412b;
                Exception exc = (Exception) this.f10413c;
                arkVar3.m.removeCallbacks(euqVar3);
                arkVar3.p.remove(gnlVar3);
                gnlVar3.d("operation_failed", exc);
                break;
        }
    }
}
