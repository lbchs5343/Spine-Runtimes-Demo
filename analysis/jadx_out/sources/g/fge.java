package g;

import com.google.android.gms.internal.ads.zzdt;
import com.google.android.gms.internal.ads.zzpr;
import com.google.android.gms.internal.ads.zzrc;

/* loaded from: classes3.dex */
public final class fge implements zzpr {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzrc f16738a;

    public /* synthetic */ fge(zzrc zzrcVar) {
        this.f16738a = zzrcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzpr
    public final void zza(Exception exc) {
        zzdt.zzd("MediaCodecAudioRenderer", "Audio sink error", exc);
        this.f16738a.f8864f.zzb(exc);
    }
}
