package g;

import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.google.android.gms.internal.ads.zzck;
import com.google.android.gms.internal.ads.zzcl;
import com.google.android.gms.internal.ads.zzcn;
import com.google.android.gms.internal.ads.zzen;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class gef extends zzcn {
    public static final int i = Float.floatToIntBits(Float.NaN);

    public static void j(ByteBuffer byteBuffer, int i2) {
        int floatToIntBits = Float.floatToIntBits((float) (i2 * 4.656612875245797E-10d));
        if (floatToIntBits == i) {
            floatToIntBits = Float.floatToIntBits(TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.gms.internal.ads.zzcm
    public final void zze(ByteBuffer byteBuffer) {
        ByteBuffer h;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        int i3 = this.f5355c.zzd;
        if (i3 == 21) {
            h = h((i2 / 3) * 4);
            while (position < limit) {
                j(h, ((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24));
                position += 3;
            }
        } else if (i3 == 22) {
            h = h(i2);
            while (position < limit) {
                int i4 = byteBuffer.get(position) & 255;
                int i5 = (byteBuffer.get(position + 1) & 255) << 8;
                j(h, i4 | i5 | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24));
                position += 4;
            }
        } else if (i3 == 1342177280) {
            h = h((i2 / 3) * 4);
            while (position < limit) {
                j(h, ((byteBuffer.get(position + 2) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24));
                position += 3;
            }
        } else {
            if (i3 != 1610612736) {
                throw new IllegalStateException();
            }
            h = h(i2);
            while (position < limit) {
                int i6 = byteBuffer.get(position + 3) & 255;
                int i7 = (byteBuffer.get(position + 2) & 255) << 8;
                j(h, i6 | i7 | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position) & 255) << 24));
                position += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        h.flip();
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzck zzi(zzck zzckVar) {
        int i2 = zzckVar.zzd;
        int i3 = zzen.zza;
        if (i2 == 21 || i2 == 1342177280 || i2 == 22 || i2 == 1610612736) {
            return new zzck(zzckVar.zzb, zzckVar.zzc, 4);
        }
        if (i2 == 4) {
            return zzck.zza;
        }
        throw new zzcl("Unhandled input format:", zzckVar);
    }
}
