package g;

import com.bykv.vk.component.ttvideo.player.C;
import com.google.android.gms.internal.ads.zzdb;
import com.google.android.gms.internal.ads.zzhm;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class ehy extends zzhm {

    /* renamed from: e, reason: collision with root package name */
    public int f15568e;

    /* renamed from: f, reason: collision with root package name */
    public int f15569f;

    /* renamed from: g, reason: collision with root package name */
    public long f15570g;

    public final boolean h(zzhm zzhmVar) {
        ByteBuffer byteBuffer;
        zzdb.zzd(!zzhmVar.b(C.ENCODING_PCM_32BIT));
        zzdb.zzd(!zzhmVar.b(C.ENCODING_PCM_MU_LAW));
        zzdb.zzd(!zzhmVar.b(4));
        if (i()) {
            if (this.f15568e >= this.f15569f) {
                return false;
            }
            ByteBuffer byteBuffer2 = zzhmVar.zzc;
            if (byteBuffer2 != null && (byteBuffer = this.zzc) != null) {
                if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                    return false;
                }
            }
        }
        int i = this.f15568e;
        this.f15568e = i + 1;
        if (i == 0) {
            this.zze = zzhmVar.zze;
            if (zzhmVar.b(1)) {
                zzc(1);
            }
        }
        ByteBuffer byteBuffer3 = zzhmVar.zzc;
        if (byteBuffer3 != null) {
            zzj(byteBuffer3.remaining());
            this.zzc.put(byteBuffer3);
        }
        this.f15570g = zzhmVar.zze;
        return true;
    }

    public final boolean i() {
        return this.f15568e > 0;
    }

    public final int j() {
        return this.f15568e;
    }

    @Override // com.google.android.gms.internal.ads.zzhm, com.google.android.gms.internal.ads.zzhg
    public final void zzb() {
        super.zzb();
        this.f15568e = 0;
    }
}
