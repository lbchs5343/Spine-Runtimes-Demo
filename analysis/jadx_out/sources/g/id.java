package g;

import android.app.Activity;
import android.app.AppOpsManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.widget.CompoundButton;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.core.graphics.drawable.IconCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class id {
    public static void a(LayerDrawable layerDrawable, LayerDrawable layerDrawable2, int i) {
        layerDrawable2.setLayerGravity(i, layerDrawable.getLayerGravity(i));
        layerDrawable2.setLayerWidth(i, layerDrawable.getLayerWidth(i));
        layerDrawable2.setLayerHeight(i, layerDrawable.getLayerHeight(i));
        layerDrawable2.setLayerInsetLeft(i, layerDrawable.getLayerInsetLeft(i));
        layerDrawable2.setLayerInsetRight(i, layerDrawable.getLayerInsetRight(i));
        layerDrawable2.setLayerInsetTop(i, layerDrawable.getLayerInsetTop(i));
        layerDrawable2.setLayerInsetBottom(i, layerDrawable.getLayerInsetBottom(i));
        layerDrawable2.setLayerInsetStart(i, layerDrawable.getLayerInsetStart(i));
        layerDrawable2.setLayerInsetEnd(i, layerDrawable.getLayerInsetEnd(i));
    }

    public static Object b(Context context) {
        return context.getSystemService(AppOpsManager.class);
    }

    public static int c(AppOpsManager appOpsManager, String str, String str2) {
        return appOpsManager.noteProxyOpNoThrow(str, str2);
    }

    public static void d(TextView textView, ColorStateList colorStateList) {
        textView.setCompoundDrawableTintList(colorStateList);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Icon e(IconCompat iconCompat, Context context) {
        Icon createWithBitmap;
        String str;
        int i;
        ColorStateList colorStateList;
        PorterDuff.Mode mode;
        InputStream openInputStream;
        switch (iconCompat.f154e) {
            case -1:
                return (Icon) iconCompat.h;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.h);
                break;
            case 2:
                int i2 = iconCompat.f154e;
                if (i2 == -1 && (i = Build.VERSION.SDK_INT) >= 23) {
                    Object obj = iconCompat.h;
                    if (i >= 28) {
                        str = eyo.r(obj);
                    } else {
                        try {
                            str = (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
                        } catch (IllegalAccessException e2) {
                            Log.e("IconCompat", "Unable to get icon package", e2);
                            str = null;
                            createWithBitmap = Icon.createWithResource(str, iconCompat.f153d);
                            colorStateList = iconCompat.k;
                            if (colorStateList != null) {
                            }
                            mode = iconCompat.f151b;
                            if (mode != IconCompat.f150a) {
                            }
                            return createWithBitmap;
                        } catch (NoSuchMethodException e3) {
                            Log.e("IconCompat", "Unable to get icon package", e3);
                            str = null;
                            createWithBitmap = Icon.createWithResource(str, iconCompat.f153d);
                            colorStateList = iconCompat.k;
                            if (colorStateList != null) {
                            }
                            mode = iconCompat.f151b;
                            if (mode != IconCompat.f150a) {
                            }
                            return createWithBitmap;
                        } catch (InvocationTargetException e4) {
                            Log.e("IconCompat", "Unable to get icon package", e4);
                            str = null;
                            createWithBitmap = Icon.createWithResource(str, iconCompat.f153d);
                            colorStateList = iconCompat.k;
                            if (colorStateList != null) {
                            }
                            mode = iconCompat.f151b;
                            if (mode != IconCompat.f150a) {
                            }
                            return createWithBitmap;
                        }
                    }
                } else {
                    if (i2 != 2) {
                        throw new IllegalStateException("called getResPackage() on " + iconCompat);
                    }
                    String str2 = iconCompat.i;
                    str = (str2 == null || TextUtils.isEmpty(str2)) ? ((String) iconCompat.h).split(":", -1)[0] : iconCompat.i;
                }
                createWithBitmap = Icon.createWithResource(str, iconCompat.f153d);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) iconCompat.h, iconCompat.f153d, iconCompat.f155f);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) iconCompat.h);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    createWithBitmap = Icon.createWithBitmap(IconCompat.l((Bitmap) iconCompat.h, false));
                    break;
                } else {
                    createWithBitmap = cmb.g((Bitmap) iconCompat.h);
                    break;
                }
            case 6:
                int i3 = Build.VERSION.SDK_INT;
                if (i3 >= 30) {
                    createWithBitmap = eyf.c(iconCompat.p());
                    break;
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.p());
                    }
                    Uri p = iconCompat.p();
                    String scheme = p.getScheme();
                    if ("content".equals(scheme) || "file".equals(scheme)) {
                        try {
                            openInputStream = context.getContentResolver().openInputStream(p);
                        } catch (Exception unused) {
                            p.toString();
                            openInputStream = null;
                            if (openInputStream == null) {
                            }
                        }
                    } else {
                        try {
                            openInputStream = new FileInputStream(new File((String) iconCompat.h));
                        } catch (FileNotFoundException unused2) {
                            p.toString();
                            openInputStream = null;
                            if (openInputStream == null) {
                            }
                        }
                    }
                    if (openInputStream == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.p());
                    }
                    if (i3 < 26) {
                        createWithBitmap = Icon.createWithBitmap(IconCompat.l(BitmapFactory.decodeStream(openInputStream), false));
                        break;
                    } else {
                        createWithBitmap = cmb.g(BitmapFactory.decodeStream(openInputStream));
                        break;
                    }
                }
                break;
        }
        colorStateList = iconCompat.k;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        mode = iconCompat.f151b;
        if (mode != IconCompat.f150a) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }

    public static void f(AppCompatTextView appCompatTextView, int i) {
        appCompatTextView.setBreakStrategy(i);
    }

    public static int g(Context context, int i) {
        return context.getColor(i);
    }

    public static String h(String str) {
        return AppOpsManager.permissionToOp(str);
    }

    public static ColorStateList i(Resources resources, int i, Resources.Theme theme) {
        return resources.getColorStateList(i, theme);
    }

    public static Notification.Action.Builder j(Icon icon, CharSequence charSequence, PendingIntent pendingIntent) {
        return new Notification.Action.Builder(icon, charSequence, pendingIntent);
    }

    public static void k(PopupWindow popupWindow, int i) {
        popupWindow.setWindowLayoutType(i);
    }

    public static boolean l(androidx.fragment.app.u uVar, String str) {
        return uVar.shouldShowRequestPermissionRationale(str);
    }

    public static boolean m(androidx.fragment.app.u uVar, String str) {
        try {
            return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(uVar.getApplication().getPackageManager(), str)).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return uVar.shouldShowRequestPermissionRationale(str);
        }
    }

    public static int n(AppCompatTextView appCompatTextView) {
        return appCompatTextView.getHyphenationFrequency();
    }

    public static boolean o(Drawable drawable, int i) {
        return drawable.setLayoutDirection(i);
    }

    public static void p(TextView textView, PorterDuff.Mode mode) {
        textView.setCompoundDrawableTintMode(mode);
    }

    public static void q(Activity activity, String[] strArr, int i) {
        activity.requestPermissions(strArr, i);
    }

    public static Object r(Context context, Class cls) {
        return context.getSystemService(cls);
    }

    public static int s(AppCompatTextView appCompatTextView) {
        return appCompatTextView.getBreakStrategy();
    }

    public static String t(Context context, Class cls) {
        return context.getSystemServiceName(cls);
    }

    public static void u(AppCompatTextView appCompatTextView, int i) {
        appCompatTextView.setHyphenationFrequency(i);
    }

    public static void v(PopupWindow popupWindow, boolean z) {
        popupWindow.setOverlapAnchor(z);
    }

    public static Drawable w(CompoundButton compoundButton) {
        return compoundButton.getButtonDrawable();
    }

    public static boolean x(androidx.fragment.app.u uVar, String str) {
        return uVar.shouldShowRequestPermissionRationale(str);
    }

    public static int y(Drawable drawable) {
        return drawable.getLayoutDirection();
    }

    public static void z(Notification.Builder builder, Icon icon) {
        builder.setLargeIcon(icon);
    }
}
