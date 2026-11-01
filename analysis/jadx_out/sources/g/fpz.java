package g;

import com.google.android.gms.internal.ads.zzfzo;
import com.google.android.gms.internal.ads.zzgae;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes3.dex */
public final class fpz extends com.google.android.gms.internal.ads.q {
    public List aj;

    public fpz(zzfzo zzfzoVar, boolean z) {
        super(zzfzoVar, z, true);
        List zza = zzfzoVar.isEmpty() ? Collections.EMPTY_LIST : zzgae.zza(zzfzoVar.size());
        for (int i = 0; i < zzfzoVar.size(); i++) {
            zza.add(null);
        }
        this.aj = zza;
        l();
    }

    @Override // com.google.android.gms.internal.ads.q
    public final void h(int i) {
        this.f3970b = null;
        this.aj = null;
    }

    @Override // com.google.android.gms.internal.ads.q
    public final void i() {
        List<oo> list = this.aj;
        if (list != null) {
            ArrayList zza = zzgae.zza(list.size());
            for (oo ooVar : list) {
                zza.add(ooVar != null ? ooVar.f19769a : null);
            }
            zzc(Collections.unmodifiableList(zza));
        }
    }

    @Override // com.google.android.gms.internal.ads.q
    public final void m(int i, Object obj) {
        List list = this.aj;
        if (list != null) {
            list.set(i, new oo(obj));
        }
    }
}
