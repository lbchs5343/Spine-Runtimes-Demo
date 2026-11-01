package g;

import com.google.android.gms.internal.ads.zzbmm;
import com.google.android.gms.internal.ads.zzdel;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class cri implements fre {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ HashMap f13378a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Map f13379b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f13380c = false;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ boolean f13381d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ evo f13382e;

    public cri(boolean z, evo evoVar, HashMap hashMap, Map map) {
        this.f13381d = z;
        this.f13382e = evoVar;
        this.f13378a = hashMap;
        this.f13379b = map;
    }

    @Override // g.fre
    public final void zza(boolean z) {
        if (this.f13380c) {
            return;
        }
        evo evoVar = this.f13382e;
        if (z && this.f13381d) {
            ((zzdel) evoVar).zzdG();
        }
        this.f13380c = true;
        String str = (String) this.f13379b.get("event_id");
        Boolean valueOf = Boolean.valueOf(z);
        HashMap hashMap = this.f13378a;
        hashMap.put(str, valueOf);
        ((zzbmm) evoVar).zzd("openIntentAsync", hashMap);
    }

    @Override // g.fre
    public final void zzb(int i) {
    }
}
