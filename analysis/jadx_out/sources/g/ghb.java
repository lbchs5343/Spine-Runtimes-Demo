package g;

import com.google.android.gms.internal.ads.zzhfj;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class ghb implements zzhfj {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f18143a;

    public ghb(ByteBuffer byteBuffer) {
        this.f18143a = byteBuffer.duplicate();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // com.google.android.gms.internal.ads.zzhfj
    public final int zza(ByteBuffer byteBuffer) {
        ByteBuffer byteBuffer2 = this.f18143a;
        if (byteBuffer2.remaining() == 0 && byteBuffer.remaining() > 0) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        byte[] bArr = new byte[min];
        byteBuffer2.get(bArr);
        byteBuffer.put(bArr);
        return min;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj
    public final long zzb() {
        return this.f18143a.position();
    }

    @Override // com.google.android.gms.internal.ads.zzhfj
    public final long zzc() {
        return this.f18143a.limit();
    }

    @Override // com.google.android.gms.internal.ads.zzhfj
    public final ByteBuffer zzd(long j, long j2) {
        int i = (int) j;
        ByteBuffer byteBuffer = this.f18143a;
        int position = byteBuffer.position();
        byteBuffer.position(i);
        ByteBuffer slice = byteBuffer.slice();
        slice.limit((int) j2);
        byteBuffer.position(position);
        return slice;
    }

    @Override // com.google.android.gms.internal.ads.zzhfj
    public final void zze(long j) {
        this.f18143a.position((int) j);
    }
}
