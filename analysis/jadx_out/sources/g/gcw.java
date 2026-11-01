package g;

import com.google.android.gms.internal.ads.zzbbh;
import java.io.InputStream;
import java.io.PushbackInputStream;

/* loaded from: classes3.dex */
public final class gcw extends PushbackInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ aal f17905a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gcw(aal aalVar, InputStream inputStream) {
        super(inputStream, 1);
        this.f17905a = aalVar;
    }

    @Override // java.io.PushbackInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        zzbbh.d(this.f17905a.f9854a);
        super.close();
    }
}
