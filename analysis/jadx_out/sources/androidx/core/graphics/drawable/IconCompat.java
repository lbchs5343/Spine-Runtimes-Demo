package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Parcelable;
import android.util.Log;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import g.eyo;
import g.id;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public class IconCompat extends CustomVersionedParcelable {

    /* renamed from: a, reason: collision with root package name */
    public static final PorterDuff.Mode f150a = PorterDuff.Mode.SRC_IN;

    /* renamed from: b, reason: collision with root package name */
    public PorterDuff.Mode f151b;

    /* renamed from: c, reason: collision with root package name */
    public Parcelable f152c;

    /* renamed from: d, reason: collision with root package name */
    public int f153d;

    /* renamed from: e, reason: collision with root package name */
    public int f154e;

    /* renamed from: f, reason: collision with root package name */
    public int f155f;

    /* renamed from: g, reason: collision with root package name */
    public String f156g;
    public Object h;
    public String i;
    public byte[] j;
    public ColorStateList k;

    public IconCompat() {
        this.f154e = -1;
        this.j = null;
        this.f152c = null;
        this.f153d = 0;
        this.f155f = 0;
        this.k = null;
        this.f151b = f150a;
        this.f156g = null;
    }

    public IconCompat(int i) {
        this.j = null;
        this.f152c = null;
        this.f153d = 0;
        this.f155f = 0;
        this.k = null;
        this.f151b = f150a;
        this.f156g = null;
        this.f154e = i;
    }

    public static Bitmap l(Bitmap bitmap, boolean z) {
        int min = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        Paint paint = new Paint(3);
        float f2 = min;
        float f3 = 0.5f * f2;
        float f4 = 0.9166667f * f3;
        if (z) {
            float f5 = 0.010416667f * f2;
            paint.setColor(0);
            paint.setShadowLayer(f5, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, f2 * 0.020833334f, 1023410176);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.setShadowLayer(f5, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, 503316480);
            canvas.drawCircle(f3, f3, f4, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(-16777216);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - min)) / 2.0f, (-(bitmap.getHeight() - min)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f3, f3, f4, paint);
        canvas.setBitmap(null);
        return createBitmap;
    }

    public static IconCompat m(Resources resources, String str, int i) {
        str.getClass();
        if (i == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f153d = i;
        if (resources != null) {
            try {
                iconCompat.h = resources.getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.h = str;
        }
        iconCompat.i = str;
        return iconCompat;
    }

    public final int n() {
        int i;
        int i2 = this.f154e;
        if (i2 != -1 || (i = Build.VERSION.SDK_INT) < 23) {
            if (i2 == 2) {
                return this.f153d;
            }
            throw new IllegalStateException("called getResId() on " + this);
        }
        Object obj = this.h;
        if (i >= 28) {
            return eyo.i(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon resource", e2);
            return 0;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon resource", e3);
            return 0;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon resource", e4);
            return 0;
        }
    }

    public final int o() {
        int i;
        int i2 = this.f154e;
        if (i2 != -1 || (i = Build.VERSION.SDK_INT) < 23) {
            return i2;
        }
        Object obj = this.h;
        if (i >= 28) {
            return eyo.d(obj);
        }
        try {
            return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e2);
            return -1;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e3);
            return -1;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon type " + obj, e4);
            return -1;
        }
    }

    public final Uri p() {
        int i;
        int i2 = this.f154e;
        if (i2 != -1 || (i = Build.VERSION.SDK_INT) < 23) {
            if (i2 == 4 || i2 == 6) {
                return Uri.parse((String) this.h);
            }
            throw new IllegalStateException("called getUri() on " + this);
        }
        Object obj = this.h;
        if (i >= 28) {
            return eyo.c(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
        } catch (IllegalAccessException e2) {
            Log.e("IconCompat", "Unable to get icon uri", e2);
            return null;
        } catch (NoSuchMethodException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        } catch (InvocationTargetException e4) {
            Log.e("IconCompat", "Unable to get icon uri", e4);
            return null;
        }
    }

    public final Bitmap q() {
        int i = this.f154e;
        if (i == -1 && Build.VERSION.SDK_INT >= 23) {
            Object obj = this.h;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i == 1) {
            return (Bitmap) this.h;
        }
        if (i == 5) {
            return l((Bitmap) this.h, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public final Icon r(Context context) {
        if (Build.VERSION.SDK_INT >= 23) {
            return id.e(this, context);
        }
        throw new UnsupportedOperationException("This method is only supported on API level 23+");
    }

    public final String toString() {
        String str;
        if (this.f154e == -1) {
            return String.valueOf(this.h);
        }
        StringBuilder sb = new StringBuilder("Icon(typ=");
        switch (this.f154e) {
            case 1:
                str = "BITMAP";
                break;
            case 2:
                str = "RESOURCE";
                break;
            case 3:
                str = "DATA";
                break;
            case 4:
                str = "URI";
                break;
            case 5:
                str = "BITMAP_MASKABLE";
                break;
            case 6:
                str = "URI_MASKABLE";
                break;
            default:
                str = "UNKNOWN";
                break;
        }
        sb.append(str);
        switch (this.f154e) {
            case 1:
            case 5:
                sb.append(" size=");
                sb.append(((Bitmap) this.h).getWidth());
                sb.append("x");
                sb.append(((Bitmap) this.h).getHeight());
                break;
            case 2:
                sb.append(" pkg=");
                sb.append(this.i);
                sb.append(" id=");
                sb.append(String.format("0x%08x", Integer.valueOf(n())));
                break;
            case 3:
                sb.append(" len=");
                sb.append(this.f153d);
                if (this.f155f != 0) {
                    sb.append(" off=");
                    sb.append(this.f155f);
                    break;
                }
                break;
            case 4:
            case 6:
                sb.append(" uri=");
                sb.append(this.h);
                break;
        }
        if (this.k != null) {
            sb.append(" tint=");
            sb.append(this.k);
        }
        if (this.f151b != f150a) {
            sb.append(" mode=");
            sb.append(this.f151b);
        }
        sb.append(")");
        return sb.toString();
    }
}
