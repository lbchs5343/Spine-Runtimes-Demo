package g;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class fbs {

    /* renamed from: a, reason: collision with root package name */
    public static final ThreadLocal f16530a = new ThreadLocal();

    /* renamed from: b, reason: collision with root package name */
    public static final WeakHashMap f16531b = new WeakHashMap(0);

    /* renamed from: c, reason: collision with root package name */
    public static final Object f16532c = new Object();

    public static void d(bcu bcuVar, int i, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f16532c) {
            try {
                WeakHashMap weakHashMap = f16531b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(bcuVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(bcuVar, sparseArray);
                }
                sparseArray.append(i, new gtl(colorStateList, bcuVar.f11302a.getConfiguration(), theme));
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x00d0 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Typeface e(Context context, int i, TypedValue typedValue, int i2, dzm dzmVar, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i) + "\" (" + Integer.toHexString(i) + ") is not a Font: " + typedValue);
        }
        String charSequence2 = charSequence.toString();
        Typeface typeface = null;
        if (charSequence2.startsWith("res/")) {
            int i3 = typedValue.assetCookie;
            ctw ctwVar = ftk.f17386b;
            Typeface typeface2 = (Typeface) ctwVar.x(ftk.f(resources, i, charSequence2, i3, i2));
            if (typeface2 != null) {
                if (dzmVar != null) {
                    new Handler(Looper.getMainLooper()).post(new dsf(dzmVar, 9, typeface2));
                }
                typeface = typeface2;
            } else if (!z2) {
                try {
                    if (charSequence2.toLowerCase().endsWith(".xml")) {
                        foh bm = eyt.bm(resources.getXml(i), resources);
                        if (bm == null) {
                            Log.e("ResourcesCompat", "Failed to find font-family tag");
                            if (dzmVar != null) {
                                dzmVar.be(-3);
                            }
                        } else {
                            typeface = ftk.e(context, bm, resources, i, charSequence2, typedValue.assetCookie, i2, dzmVar, z);
                        }
                    } else {
                        int i4 = typedValue.assetCookie;
                        Typeface q = ftk.f17385a.q(context, resources, i, charSequence2, i2);
                        if (q != null) {
                            ctwVar.m(ftk.f(resources, i, charSequence2, i4, i2), q);
                        }
                        if (dzmVar != null) {
                            if (q != null) {
                                new Handler(Looper.getMainLooper()).post(new dsf(dzmVar, 9, q));
                            } else {
                                dzmVar.be(-3);
                            }
                        }
                        typeface = q;
                    }
                } catch (IOException e2) {
                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(charSequence2), e2);
                    if (dzmVar != null) {
                        dzmVar.be(-3);
                    }
                    if (typeface == null) {
                    }
                    return typeface;
                } catch (XmlPullParserException e3) {
                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(charSequence2), e3);
                    if (dzmVar != null) {
                    }
                    if (typeface == null) {
                    }
                    return typeface;
                }
            }
        } else if (dzmVar != null) {
            dzmVar.be(-3);
        }
        if (typeface == null || dzmVar != null || z2) {
            return typeface;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }
}
