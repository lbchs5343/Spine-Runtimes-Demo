package g;

import com.google.android.gms.internal.ads.zzfhl;
import java.util.LinkedList;

/* loaded from: classes3.dex */
public final class bvs {

    /* renamed from: c, reason: collision with root package name */
    public final int f12285c;

    /* renamed from: d, reason: collision with root package name */
    public final int f12286d;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedList f12284b = new LinkedList();

    /* renamed from: a, reason: collision with root package name */
    public final pa f12283a = new pa();

    public bvs(int i, int i2) {
        this.f12285c = i;
        this.f12286d = i2;
    }

    public final void e() {
        while (true) {
            LinkedList linkedList = this.f12284b;
            if (linkedList.isEmpty()) {
                return;
            }
            zzfhl zzfhlVar = (zzfhl) linkedList.getFirst();
            ti.f20033a.v.getClass();
            if (System.currentTimeMillis() - zzfhlVar.zzd < this.f12286d) {
                return;
            }
            pa paVar = this.f12283a;
            paVar.f19795d++;
            paVar.f19796e.zzb++;
            linkedList.remove();
        }
    }
}
