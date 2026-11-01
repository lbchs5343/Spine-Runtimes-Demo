package g;

import android.os.Bundle;
import com.google.android.gms.internal.ads.zzevy;
import com.google.android.gms.internal.ads.zzevz;
import com.google.android.gms.internal.ads.zzgei;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes3.dex */
public final class ceh implements zzevz {

    /* renamed from: a, reason: collision with root package name */
    public final Set f12735a;

    public ceh(Set set) {
        this.f12735a = set;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final int zza() {
        return 8;
    }

    @Override // com.google.android.gms.internal.ads.zzevz
    public final dcy zzb() {
        final ArrayList arrayList = new ArrayList();
        Iterator it = this.f12735a.iterator();
        while (it.hasNext()) {
            arrayList.add((String) it.next());
        }
        return zzgei.zzh(new zzevy() { // from class: com.google.android.gms.internal.ads.zzeop
            @Override // com.google.android.gms.internal.ads.zzevy
            public final void zzj(Object obj) {
                ((Bundle) obj).putStringArrayList("ad_types", arrayList);
            }
        });
    }
}
