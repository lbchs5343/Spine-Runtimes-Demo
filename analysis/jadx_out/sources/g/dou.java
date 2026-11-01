package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.Writer;

/* loaded from: classes.dex */
public final class dou extends Writer {

    /* renamed from: a, reason: collision with root package name */
    public final StringBuilder f14550a = new StringBuilder(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);

    public final void b() {
        StringBuilder sb = this.f14550a;
        if (sb.length() > 0) {
            sb.toString();
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        b();
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        b();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3++) {
            char c2 = cArr[i + i3];
            if (c2 == '\n') {
                b();
            } else {
                this.f14550a.append(c2);
            }
        }
    }
}
