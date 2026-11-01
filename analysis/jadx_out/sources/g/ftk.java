package g;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.text.PositionedGlyphs;
import android.graphics.text.TextRunShaper;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.text.TextUtils;
import android.util.Log;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import j$.util.Objects;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public abstract class ftk {

    /* renamed from: a, reason: collision with root package name */
    public static final eyt f17385a;

    /* renamed from: b, reason: collision with root package name */
    public static final ctw f17386b;

    /* renamed from: c, reason: collision with root package name */
    public static Paint f17387c;

    static {
        Trace.beginSection(baf.y("TypefaceCompat static init"));
        int i = Build.VERSION.SDK_INT;
        if (i >= 31) {
            f17385a = new een();
        } else if (i >= 29) {
            f17385a = new gow();
        } else if (i >= 28) {
            f17385a = new ado();
        } else if (i >= 26) {
            f17385a = new duq();
        } else if (i < 24 || anr.f10528b == null) {
            f17385a = new fbw();
        } else {
            f17385a = new anr();
        }
        f17386b = new ctw(16);
        f17387c = null;
        Trace.endSection();
    }

    public static Font d(Typeface typeface) {
        PositionedGlyphs shapeTextRun;
        int glyphCount;
        Font font;
        if (f17387c == null) {
            f17387c = new Paint();
        }
        f17387c.setTextSize(10.0f);
        f17387c.setTypeface(typeface);
        shapeTextRun = TextRunShaper.shapeTextRun((CharSequence) " ", 0, 1, 0, 1, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, TTAdConstant.ASPECT_CORNER_RADIUS_DEFAULT, false, f17387c);
        glyphCount = shapeTextRun.glyphCount();
        if (glyphCount == 0) {
            return null;
        }
        font = shapeTextRun.getFont(0);
        return font;
    }

    public static Typeface e(Context context, foh fohVar, Resources resources, int i, String str, int i2, int i3, dzm dzmVar, boolean z) {
        Typeface g2;
        Typeface build;
        Font.Builder fontVariationSettings;
        Font build2;
        FontFamily build3;
        int i4 = 9;
        int i5 = -3;
        if (fohVar instanceof fiw) {
            fiw fiwVar = (fiw) fohVar;
            String str2 = fiwVar.f16864a;
            Typeface typeface = null;
            int i6 = 1;
            int i7 = 0;
            if (TextUtils.isEmpty(str2) || (build = g(str2)) == null) {
                ArrayList arrayList = fiwVar.f16865b;
                if (arrayList.size() == 1) {
                    build = g(((bui) arrayList.get(0)).f12218b);
                } else {
                    if (Build.VERSION.SDK_INT >= 31) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= arrayList.size()) {
                                Typeface.CustomFallbackBuilder customFallbackBuilder = null;
                                int i9 = 0;
                                while (true) {
                                    if (i9 >= arrayList.size()) {
                                        break;
                                    }
                                    bui buiVar = (bui) arrayList.get(i9);
                                    if (i9 == arrayList.size() - 1 && TextUtils.isEmpty(buiVar.f12220d)) {
                                        customFallbackBuilder.setSystemFallback(buiVar.f12218b);
                                        break;
                                    }
                                    String str3 = buiVar.f12218b;
                                    String str4 = buiVar.f12220d;
                                    Font d2 = d(g(str3));
                                    if (d2 == null) {
                                        break;
                                    }
                                    if (TextUtils.isEmpty(str4)) {
                                        try {
                                            io.i();
                                            io.ab();
                                            fontVariationSettings = dgd.b(d2).setFontVariationSettings(str4);
                                            build2 = fontVariationSettings.build();
                                            build3 = io.u(build2).build();
                                        } catch (IOException unused) {
                                            Log.e("TypefaceCompat", "Failed to clone Font instance. Fall back to provider font.");
                                        }
                                    } else {
                                        build3 = io.u(d2).build();
                                    }
                                    if (customFallbackBuilder == null) {
                                        customFallbackBuilder = io.g(build3);
                                    } else {
                                        customFallbackBuilder.addCustomFallback(build3);
                                    }
                                    i9++;
                                }
                                build = customFallbackBuilder.build();
                            } else {
                                if (g(((bui) arrayList.get(i8)).f12218b) == null) {
                                    break;
                                }
                                i8++;
                            }
                        }
                    }
                    build = null;
                }
            }
            if (build != null) {
                if (dzmVar != null) {
                    new Handler(Looper.getMainLooper()).post(new dsf(dzmVar, i4, build));
                }
                f17386b.m(f(resources, i, str, i2, i3), build);
                return build;
            }
            boolean z2 = !z ? dzmVar != null : fiwVar.f16867d != 0;
            int i10 = z ? fiwVar.f16866c : -1;
            Handler handler = new Handler(Looper.getMainLooper());
            fnq fnqVar = new fnq(18);
            fnqVar.f17099f = dzmVar;
            ArrayList arrayList2 = fiwVar.f16865b;
            dbi dbiVar = new dbi(handler, 1);
            gtb gtbVar = new gtb(fnqVar, 4, dbiVar);
            int i11 = 11;
            if (!z2) {
                String e2 = anc.e(i3, arrayList2);
                Typeface typeface2 = (Typeface) anc.f10511b.x(e2);
                if (typeface2 != null) {
                    dbiVar.execute(new gfh(fnqVar, i11, typeface2));
                    typeface = typeface2;
                } else {
                    gmv gmvVar = new gmv(i7, gtbVar);
                    synchronized (anc.f10513d) {
                        try {
                            bcp bcpVar = anc.f10510a;
                            ArrayList arrayList3 = (ArrayList) bcpVar.get(e2);
                            if (arrayList3 != null) {
                                arrayList3.add(gmvVar);
                            } else {
                                ArrayList arrayList4 = new ArrayList();
                                arrayList4.add(gmvVar);
                                bcpVar.put(e2, arrayList4);
                                dq dqVar = new dq(e2, context, arrayList2, i3, 1);
                                ThreadPoolExecutor threadPoolExecutor = anc.f10512c;
                                gmv gmvVar2 = new gmv(i6, e2);
                                Handler handler2 = Looper.myLooper() == null ? new Handler(Looper.getMainLooper()) : new Handler();
                                eax eaxVar = new eax();
                                eaxVar.f15212d = dqVar;
                                eaxVar.f15209a = gmvVar2;
                                eaxVar.f15210b = handler2;
                                threadPoolExecutor.execute(eaxVar);
                            }
                        } finally {
                        }
                    }
                }
            } else {
                if (arrayList2.size() > 1) {
                    throw new IllegalArgumentException("Fallbacks with blocking fetches are not supported for performance reasons");
                }
                bui buiVar2 = (bui) arrayList2.get(0);
                ctw ctwVar = anc.f10511b;
                ArrayList arrayList5 = new ArrayList(1);
                Object obj = new Object[]{buiVar2}[0];
                Objects.requireNonNull(obj);
                arrayList5.add(obj);
                String e3 = anc.e(i3, Collections.unmodifiableList(arrayList5));
                Typeface typeface3 = (Typeface) anc.f10511b.x(e3);
                if (typeface3 != null) {
                    dbiVar.execute(new gfh(fnqVar, i11, typeface3));
                    typeface = typeface3;
                } else if (i10 == -1) {
                    Object[] objArr = {buiVar2};
                    ArrayList arrayList6 = new ArrayList(1);
                    Object obj2 = objArr[0];
                    Objects.requireNonNull(obj2);
                    arrayList6.add(obj2);
                    cgr f2 = anc.f(e3, context, Collections.unmodifiableList(arrayList6), i3);
                    gtbVar.y(f2);
                    typeface = f2.f12851a;
                } else {
                    try {
                        try {
                            try {
                                try {
                                    cgr cgrVar = (cgr) anc.f10512c.submit(new dq(e3, context, buiVar2, i3, 0)).get(i10, TimeUnit.MILLISECONDS);
                                    gtbVar.y(cgrVar);
                                    typeface = cgrVar.f12851a;
                                } catch (ExecutionException e4) {
                                    throw new RuntimeException(e4);
                                }
                            } catch (TimeoutException unused2) {
                                throw new InterruptedException("timeout");
                            }
                        } catch (InterruptedException e5) {
                            throw e5;
                        }
                    } catch (InterruptedException unused3) {
                        ((dbi) gtbVar.f18712b).execute(new dj((fnq) gtbVar.f18714d, i5, i6));
                    }
                }
            }
            g2 = typeface;
        } else {
            g2 = f17385a.g(context, (cgc) fohVar, resources, i3);
            if (dzmVar != null) {
                if (g2 != null) {
                    new Handler(Looper.getMainLooper()).post(new dsf(dzmVar, i4, g2));
                } else {
                    dzmVar.be(-3);
                }
            }
        }
        if (g2 != null) {
            f17386b.m(f(resources, i, str, i2, i3), g2);
        }
        return g2;
    }

    public static String f(Resources resources, int i, String str, int i2, int i3) {
        return resources.getResourcePackageName(i) + '-' + str + '-' + i2 + '-' + i + '-' + i3;
    }

    public static Typeface g(String str) {
        if (str != null && !str.isEmpty()) {
            Typeface create = Typeface.create(str, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create != null && !create.equals(create2)) {
                return create;
            }
        }
        return null;
    }
}
