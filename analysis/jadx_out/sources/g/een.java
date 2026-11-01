package g;

import android.graphics.Typeface;
import android.graphics.fonts.Font;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import j$.util.Objects;
import java.io.IOException;

/* loaded from: classes.dex */
public final class een extends gow {
    @Override // g.gow
    public final Font a(gnf gnfVar) {
        Font d2;
        Uri uri = gnfVar.f18445c;
        boolean equals = Objects.equals(uri.getScheme(), "systemfont");
        String str = gnfVar.f18444b;
        String authority = equals ? uri.getAuthority() : null;
        if (authority != null) {
            Typeface create = Typeface.create(authority, 0);
            Typeface create2 = Typeface.create(Typeface.DEFAULT, 0);
            if (create == null || create.equals(create2)) {
                create = null;
            }
            if (create != null && (d2 = ftk.d(create)) != null) {
                if (TextUtils.isEmpty(str)) {
                    return d2;
                }
                try {
                    return new Font.Builder(d2).setFontVariationSettings(str).build();
                } catch (IOException unused) {
                    Log.e("TypefaceCompatApi31Impl", "Failed to clone Font instance. Fall back to provider font.");
                    return null;
                }
            }
        }
        return null;
    }
}
