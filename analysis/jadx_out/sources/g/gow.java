package g;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.graphics.fonts.FontFamily;
import android.graphics.fonts.FontStyle;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.util.Objects;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* loaded from: classes.dex */
public class gow extends eyt {
    public static Font b(FontFamily fontFamily, int i) {
        FontStyle fontStyle = new FontStyle((i & 1) != 0 ? 700 : MediaPlayer.MEDIA_PLAYER_OPTION_USE_CODEC_POOL, (i & 2) != 0 ? 1 : 0);
        Font font = fontFamily.getFont(0);
        int c2 = c(fontStyle, font.getStyle());
        for (int i2 = 1; i2 < fontFamily.getSize(); i2++) {
            Font font2 = fontFamily.getFont(i2);
            int c3 = c(fontStyle, font2.getStyle());
            if (c3 < c2) {
                font = font2;
                c2 = c3;
            }
        }
        return font;
    }

    public static int c(FontStyle fontStyle, FontStyle fontStyle2) {
        return (Math.abs(fontStyle.getWeight() - fontStyle2.getWeight()) / 100) + (fontStyle.getSlant() == fontStyle2.getSlant() ? 0 : 2);
    }

    public Font a(gnf gnfVar) {
        throw new UnsupportedOperationException("Getting font from Typeface is not supported before API31");
    }

    @Override // g.eyt
    public final Typeface bw(Context context, List list, int i) {
        ContentResolver contentResolver = context.getContentResolver();
        try {
            FontFamily d2 = d((gnf[]) list.get(0), contentResolver);
            if (d2 == null) {
                return null;
            }
            Typeface.CustomFallbackBuilder customFallbackBuilder = new Typeface.CustomFallbackBuilder(d2);
            for (int i2 = 1; i2 < list.size(); i2++) {
                FontFamily d3 = d((gnf[]) list.get(i2), contentResolver);
                if (d3 != null) {
                    customFallbackBuilder.addCustomFallback(d3);
                }
            }
            return customFallbackBuilder.setStyle(b(d2, i).getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // g.eyt
    public final Typeface bx(Context context, InputStream inputStream) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    @Override // g.eyt
    public final gnf by(gnf[] gnfVarArr, int i) {
        throw new RuntimeException("Do not use this function in API 29 or later.");
    }

    public final FontFamily d(gnf[] gnfVarArr, ContentResolver contentResolver) {
        Font font;
        String str;
        ParcelFileDescriptor openFileDescriptor;
        FontFamily.Builder builder = null;
        for (gnf gnfVar : gnfVarArr) {
            if (Objects.equals(gnfVar.f18445c.getScheme(), "systemfont")) {
                font = a(gnfVar);
            } else {
                try {
                    Uri uri = gnfVar.f18445c;
                    str = gnfVar.f18444b;
                    openFileDescriptor = contentResolver.openFileDescriptor(uri, "r", null);
                } catch (IOException unused) {
                }
                if (openFileDescriptor == null) {
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    font = null;
                } else {
                    try {
                        Font.Builder ttcIndex = new Font.Builder(openFileDescriptor).setWeight(gnfVar.f18448f).setSlant(gnfVar.f18443a ? 1 : 0).setTtcIndex(gnfVar.f18447e);
                        if (!TextUtils.isEmpty(str)) {
                            ttcIndex.setFontVariationSettings(str);
                        }
                        font = ttcIndex.build();
                        openFileDescriptor.close();
                    } catch (Throwable th) {
                        try {
                            openFileDescriptor.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            }
            if (font != null) {
                if (builder == null) {
                    builder = new FontFamily.Builder(font);
                } else {
                    builder.addFont(font);
                }
            }
        }
        if (builder == null) {
            return null;
        }
        return builder.build();
    }

    @Override // g.eyt
    public final Typeface g(Context context, cgc cgcVar, Resources resources, int i) {
        try {
            FontFamily.Builder builder = null;
            for (dy dyVar : cgcVar.f12816a) {
                try {
                    Font build = new Font.Builder(resources, dyVar.f15061d).setWeight(dyVar.f15062e).setSlant(dyVar.f15063f ? 1 : 0).setTtcIndex(dyVar.f15059b).setFontVariationSettings(dyVar.f15058a).build();
                    if (builder == null) {
                        builder = new FontFamily.Builder(build);
                    } else {
                        builder.addFont(build);
                    }
                } catch (IOException unused) {
                }
            }
            if (builder == null) {
                return null;
            }
            FontFamily build2 = builder.build();
            return new Typeface.CustomFallbackBuilder(build2).setStyle(b(build2, i).getStyle()).build();
        } catch (Exception unused2) {
            return null;
        }
    }

    @Override // g.eyt
    public final Typeface h(Context context, gnf[] gnfVarArr, int i) {
        try {
            FontFamily d2 = d(gnfVarArr, context.getContentResolver());
            if (d2 == null) {
                return null;
            }
            return new Typeface.CustomFallbackBuilder(d2).setStyle(b(d2, i).getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // g.eyt
    public final Typeface q(Context context, Resources resources, int i, String str, int i2) {
        try {
            Font build = new Font.Builder(resources, i).build();
            return new Typeface.CustomFallbackBuilder(new FontFamily.Builder(build).build()).setStyle(build.getStyle()).build();
        } catch (Exception unused) {
            return null;
        }
    }
}
