package com.google.android.gms.internal.ads;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes3.dex */
public final class zzgxn extends OutputStream {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8665a = new byte[0];

    /* renamed from: b, reason: collision with root package name */
    public int f8666b;

    /* renamed from: d, reason: collision with root package name */
    public int f8668d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8669e = TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f8670f = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public byte[] f8667c = new byte[TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME];

    public final void g(int i) {
        this.f8670f.add(new ah(this.f8667c));
        int length = this.f8666b + this.f8667c.length;
        this.f8666b = length;
        this.f8667c = new byte[Math.max(this.f8669e, Math.max(i, length >>> 1))];
        this.f8668d = 0;
    }

    public final String toString() {
        return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(zza()));
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i) {
        try {
            if (this.f8668d == this.f8667c.length) {
                g(1);
            }
            byte[] bArr = this.f8667c;
            int i2 = this.f8668d;
            this.f8668d = i2 + 1;
            bArr[i2] = (byte) i;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.f8667c;
        int length = bArr2.length;
        int i3 = this.f8668d;
        int i4 = length - i3;
        if (i2 <= i4) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.f8668d += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i4);
        int i5 = i2 - i4;
        g(i5);
        System.arraycopy(bArr, i + i4, this.f8667c, 0, i5);
        this.f8668d = i5;
    }

    public final synchronized int zza() {
        return this.f8666b + this.f8668d;
    }

    public final synchronized zzgxp zzb() {
        try {
            int i = this.f8668d;
            byte[] bArr = this.f8667c;
            if (i >= bArr.length) {
                this.f8670f.add(new ah(this.f8667c));
                this.f8667c = f8665a;
            } else if (i > 0) {
                this.f8670f.add(new ah(Arrays.copyOf(bArr, i)));
            }
            this.f8666b += this.f8668d;
            this.f8668d = 0;
        } catch (Throwable th) {
            throw th;
        }
        return zzgxp.zzu(this.f8670f);
    }
}
