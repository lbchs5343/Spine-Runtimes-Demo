package g;

import com.google.android.gms.internal.ads.zzblv;
import com.google.android.gms.internal.ads.zzdvf;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public final class amg extends zzblv {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10466a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f10467b;

    public /* synthetic */ amg(int i, Object obj) {
        this.f10466a = i;
        this.f10467b = obj;
    }

    @Override // com.google.android.gms.internal.ads.zzblw
    public final void zzb(List list) {
        ArrayList arrayList;
        switch (this.f10466a) {
            case 0:
                ((zzdvf) this.f10467b).f(list);
                return;
            default:
                synchronized (((bza) this.f10467b).f12485f) {
                    bza bzaVar = (bza) this.f10467b;
                    bzaVar.f12484e = false;
                    bzaVar.f12486g = true;
                    arrayList = new ArrayList(((bza) this.f10467b).f12483d);
                    ((bza) this.f10467b).f12483d.clear();
                }
                bza.n(list);
                if (arrayList.size() > 0) {
                    throw tn.w(0, arrayList);
                }
                return;
        }
    }
}
