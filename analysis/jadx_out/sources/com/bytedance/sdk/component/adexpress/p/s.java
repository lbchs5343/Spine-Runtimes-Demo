package com.bytedance.sdk.component.adexpress.p;

import android.graphics.Bitmap;
import android.graphics.ImageDecoder;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.widget.ImageView;
import com.bytedance.sdk.component.adexpress.widget.GifView;
import g.agk;
import g.cpx;
import g.fc;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.Arrays;

/* loaded from: classes.dex */
public class s {
    private static final byte[] dq = dq("VP8X");

    public static void d(ImageView imageView, byte[] bArr, int i, int i2) {
        try {
            if (imageView instanceof GifView) {
                ((GifView) imageView).dq(bArr, false);
                return;
            }
            if (TextUtils.equals("png", com.bytedance.sdk.component.utils.kk.dq(Arrays.copyOfRange(bArr, 0, com.bytedance.sdk.component.utils.kk.dq())))) {
                ox(imageView, bArr, i, i2);
            } else if (dq(bArr, 0)) {
                dq(imageView, bArr, i, i2);
            } else {
                p(imageView, bArr, i, i2);
            }
        } catch (Throwable th) {
            th.getMessage();
        }
    }

    public static void dq(final ImageView imageView, byte[] bArr, int i, int i2) {
        ImageDecoder.Source createSource;
        final Drawable decodeDrawable;
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        if (Build.VERSION.SDK_INT < 28) {
            p(imageView, bArr, i, i2);
            return;
        }
        createSource = ImageDecoder.createSource(wrap);
        try {
            decodeDrawable = ImageDecoder.decodeDrawable(createSource);
            com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.p.s.3
                @Override // java.lang.Runnable
                public void run() {
                    if (agk.h(decodeDrawable)) {
                        agk.c(decodeDrawable).start();
                    }
                    imageView.setImageDrawable(decodeDrawable);
                }
            });
        } catch (IOException e2) {
            e2.printStackTrace();
        }
    }

    public static boolean dq(byte[] bArr) {
        if (bArr != null && bArr.length > 0) {
            String str = new String(bArr);
            if (str.substring(0, str.indexOf("IDAT")).indexOf("acTL") > 0) {
                return true;
            }
        }
        return false;
    }

    public static boolean dq(byte[] bArr, int i) {
        try {
            boolean dq2 = dq(bArr, i + 12, dq);
            int i2 = i + 20;
            if (bArr.length <= i2) {
                return false;
            }
            return dq2 && ((bArr[i2] & 2) == 2);
        } catch (Throwable th) {
            th.printStackTrace();
            return false;
        }
    }

    private static boolean dq(byte[] bArr, int i, byte[] bArr2) {
        if (bArr2 == null || bArr == null || bArr2.length + i > bArr.length) {
            return false;
        }
        for (int i2 = 0; i2 < bArr2.length; i2++) {
            if (bArr[i2 + i] != bArr2[i2]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] dq(String str) {
        try {
            return str.getBytes("ASCII");
        } catch (UnsupportedEncodingException unused) {
            return new byte[1];
        }
    }

    private static void ox(final ImageView imageView, byte[] bArr, int i, int i2) {
        if (!dq(bArr)) {
            p(imageView, bArr, i, i2);
            return;
        }
        final cpx cpxVar = new cpx(new fc(21, ByteBuffer.wrap(bArr)));
        com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.p.s.1
            @Override // java.lang.Runnable
            public void run() {
                imageView.setImageDrawable(cpxVar);
            }
        });
    }

    private static void p(final ImageView imageView, byte[] bArr, int i, int i2) {
        final Bitmap dq2 = new com.bytedance.sdk.component.iw.ox.d.dq(i, i2, imageView.getScaleType(), Bitmap.Config.RGB_565, i, i2).dq(bArr);
        if (dq2 != null) {
            com.bytedance.sdk.component.utils.ia.d().post(new Runnable() { // from class: com.bytedance.sdk.component.adexpress.p.s.2
                @Override // java.lang.Runnable
                public void run() {
                    imageView.setImageBitmap(dq2);
                }
            });
        }
    }
}
