package com.bytedance.sdk.component.iw.ox.d;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class dq {
    private final ImageView.ScaleType ia;
    private final int iw;
    private final int mn;
    private final Bitmap.Config ox;
    private int p;
    private int s;
    public static final ImageView.ScaleType dq = ImageView.ScaleType.CENTER_INSIDE;

    /* renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config f1948d = Bitmap.Config.ARGB_4444;
    private final int kk = 3840;
    private final int o = 104857600;

    public dq(int i, int i2, ImageView.ScaleType scaleType, Bitmap.Config config, int i3, int i4) {
        this.ox = config;
        this.p = i;
        this.s = i2;
        this.ia = scaleType;
        this.iw = i3;
        this.mn = i4;
        dq(i, i2);
    }

    public static int dq(int i, int i2, int i3, int i4, int i5, int i6) {
        double min = Math.min(i / i3, i2 / i4);
        if (i5 > 0 && i6 > 0) {
            min = Math.max(min, Math.min(Math.max(i, i2) / Math.max(i5, i6), Math.min(i, i2) / Math.min(i5, i6)));
        }
        float f2 = 1.0f;
        while (true) {
            float f3 = 2.0f * f2;
            if (f3 > min) {
                return (int) f2;
            }
            f2 = f3;
        }
    }

    private static int dq(int i, int i2, int i3, int i4, ImageView.ScaleType scaleType) {
        if (i != 0 || i2 != 0) {
            if (scaleType != ImageView.ScaleType.FIT_XY) {
                if (i == 0) {
                    return (int) (i3 * (i2 / i4));
                }
                if (i2 == 0) {
                    return i;
                }
                double d2 = i4 / i3;
                if (scaleType == ImageView.ScaleType.CENTER_CROP) {
                    double d3 = i2;
                    return ((double) i) * d2 < d3 ? (int) (d3 / d2) : i;
                }
                double d4 = i2;
                return ((double) i) * d2 > d4 ? (int) (d4 / d2) : i;
            }
            if (i != 0) {
                return i;
            }
        }
        return i3;
    }

    private void dq(int i, int i2) {
        if (i > 3840 && i2 > 3840) {
            if (i > i2) {
                this.p = 3840;
                this.s = (i2 * 3840) / i;
                return;
            } else {
                this.p = (i * 3840) / i2;
                this.s = 3840;
                return;
            }
        }
        if (i > 3840) {
            this.p = 3840;
            this.s = (i2 * 3840) / i;
        } else if (i2 > 3840) {
            this.p = (i * 3840) / i2;
            this.s = 3840;
        }
    }

    public Bitmap dq(byte[] bArr) {
        Bitmap decodeByteArray;
        BitmapFactory.Options options = new BitmapFactory.Options();
        if (this.p == 0 && this.s == 0) {
            options.inPreferredConfig = this.ox;
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
        } else {
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            int i = options.outWidth;
            int i2 = options.outHeight;
            int dq2 = dq(this.p, this.s, i, i2, this.ia);
            int dq3 = dq(this.s, this.p, i2, i, this.ia);
            options.inJustDecodeBounds = false;
            options.inSampleSize = dq(i, i2, dq2, dq3, this.iw, this.mn);
            decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length, options);
            if (decodeByteArray != null && (decodeByteArray.getWidth() > dq2 || decodeByteArray.getHeight() > dq3)) {
                Bitmap createScaledBitmap = Bitmap.createScaledBitmap(decodeByteArray, dq2, dq3, true);
                if (createScaledBitmap != decodeByteArray) {
                    decodeByteArray.recycle();
                }
                decodeByteArray = createScaledBitmap;
            }
        }
        if (decodeByteArray != null && decodeByteArray.getByteCount() > 104857600) {
            int width = decodeByteArray.getWidth() / 2;
            int height = decodeByteArray.getHeight() / 2;
            if (width > 0 && height > 0) {
                Bitmap createScaledBitmap2 = Bitmap.createScaledBitmap(decodeByteArray, width, height, true);
                if (createScaledBitmap2 != decodeByteArray) {
                    decodeByteArray.recycle();
                }
                return createScaledBitmap2;
            }
        }
        return decodeByteArray;
    }
}
