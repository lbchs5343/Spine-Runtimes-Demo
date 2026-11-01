package g;

import android.util.JsonWriter;
import com.google.android.gms.internal.ads.zzgee;

/* loaded from: classes3.dex */
public final class aox implements gtx, zzgee, fbf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f10594a;

    public /* synthetic */ aox(String str) {
        this.f10594a = str;
    }

    @Override // g.gtx
    public Object ao() {
        throw new gyr(this.f10594a);
    }

    @Override // g.fbf
    public void b(JsonWriter jsonWriter) {
        Object obj = dzz.f15159c;
        jsonWriter.name("params").beginObject();
        String str = this.f10594a;
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zza(Throwable th) {
        ti.f20033a.f20034ab.zzw(th, this.f10594a);
    }

    @Override // com.google.android.gms.internal.ads.zzgee
    public void zzb(Object obj) {
    }
}
