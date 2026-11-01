package g;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.gms.internal.ads.zzlm;
import com.google.android.gms.internal.ads.zzsm;
import java.util.ArrayDeque;

/* loaded from: classes3.dex */
public final class cfp extends MediaCodec.Callback {

    /* renamed from: a, reason: collision with root package name */
    public MediaFormat f12794a;

    /* renamed from: b, reason: collision with root package name */
    public MediaCodec.CryptoException f12795b;

    /* renamed from: c, reason: collision with root package name */
    public zzsm f12796c;

    /* renamed from: d, reason: collision with root package name */
    public IllegalStateException f12797d;

    /* renamed from: f, reason: collision with root package name */
    public long f12799f;
    public boolean j;
    public MediaFormat k;
    public final HandlerThread l;
    public MediaCodec.CodecException m;
    public Handler n;
    public final Object h = new Object();

    /* renamed from: e, reason: collision with root package name */
    public final adr f12798e = new adr();

    /* renamed from: g, reason: collision with root package name */
    public final adr f12800g = new adr();
    public final ArrayDeque i = new ArrayDeque();
    public final ArrayDeque o = new ArrayDeque();

    public cfp(HandlerThread handlerThread) {
        this.l = handlerThread;
    }

    @Override // android.media.MediaCodec.Callback
    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.h) {
            this.f12795b = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.h) {
            this.m = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        zzlm zzlmVar;
        synchronized (this.h) {
            try {
                this.f12798e.e(i);
                zzsm zzsmVar = this.f12796c;
                if (zzsmVar != null && (zzlmVar = ((cdg) zzsmVar).f12687a.de) != null) {
                    zzlmVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        zzlm zzlmVar;
        synchronized (this.h) {
            try {
                MediaFormat mediaFormat = this.k;
                if (mediaFormat != null) {
                    this.f12800g.e(-2);
                    this.o.add(mediaFormat);
                    this.k = null;
                }
                this.f12800g.e(i);
                this.i.add(bufferInfo);
                zzsm zzsmVar = this.f12796c;
                if (zzsmVar != null && (zzlmVar = ((cdg) zzsmVar).f12687a.de) != null) {
                    zzlmVar.zza();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.h) {
            this.f12800g.e(-2);
            this.o.add(mediaFormat);
            this.k = null;
        }
    }

    public final void p() {
        ArrayDeque arrayDeque = this.o;
        if (!arrayDeque.isEmpty()) {
            this.k = (MediaFormat) arrayDeque.getLast();
        }
        adr adrVar = this.f12798e;
        adrVar.f10056d = adrVar.f10055c;
        adr adrVar2 = this.f12800g;
        adrVar2.f10056d = adrVar2.f10055c;
        this.i.clear();
        arrayDeque.clear();
    }
}
