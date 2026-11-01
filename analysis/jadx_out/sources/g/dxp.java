package g;

import android.media.AudioTimestamp;
import android.media.AudioTrack;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public final class dxp {

    /* renamed from: a, reason: collision with root package name */
    public final Object f15028a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15029b;

    /* renamed from: c, reason: collision with root package name */
    public long f15030c;

    /* renamed from: d, reason: collision with root package name */
    public long f15031d;

    /* renamed from: e, reason: collision with root package name */
    public long f15032e;

    public dxp(AudioTrack audioTrack) {
        this.f15028a = audioTrack;
        this.f15029b = new AudioTimestamp();
    }

    public /* synthetic */ dxp(ByteBuffer byteBuffer, long j, long j2, long j3, ByteBuffer byteBuffer2) {
        this.f15028a = byteBuffer;
        this.f15030c = j;
        this.f15031d = j2;
        this.f15032e = j3;
        this.f15029b = byteBuffer2;
    }
}
