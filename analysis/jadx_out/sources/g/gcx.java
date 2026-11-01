package g;

import com.google.android.gms.internal.ads.zzck;
import com.google.android.gms.internal.ads.zzcl;
import com.google.android.gms.internal.ads.zzcn;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class gcx extends zzcn {
    public int[] i;
    public int[] j;

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zze(ByteBuffer byteBuffer) {
        int[] iArr = this.j;
        iArr.getClass();
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer h = h(((limit - position) / this.f5355c.zze) * this.f5357e.zze);
        while (position < limit) {
            for (int i : iArr) {
                h.putShort(byteBuffer.getShort(i + i + position));
            }
            position += this.f5355c.zze;
        }
        byteBuffer.position(limit);
        h.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck zzi(zzck zzckVar) {
        int[] iArr = this.i;
        if (iArr == null) {
            return zzck.zza;
        }
        if (zzckVar.zzd != 2) {
            throw new zzcl("Unhandled input format:", zzckVar);
        }
        boolean z = zzckVar.zzc != iArr.length;
        int i = 0;
        while (true) {
            int length = iArr.length;
            if (i >= length) {
                return z ? new zzck(zzckVar.zzb, length, 2) : zzck.zza;
            }
            int i2 = iArr[i];
            if (i2 >= zzckVar.zzc) {
                throw new zzcl("Unhandled input format:", zzckVar);
            }
            z |= i2 != i;
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzk() {
        this.j = this.i;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzm() {
        this.j = null;
        this.i = null;
    }
}
