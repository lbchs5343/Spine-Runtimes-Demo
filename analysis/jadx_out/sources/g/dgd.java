package g;

import android.content.ClipData;
import android.content.pm.ApkChecksum;
import android.graphics.fonts.Font;
import android.view.ContentInfo;

/* loaded from: classes3.dex */
public abstract /* synthetic */ class dgd {
    public static /* bridge */ /* synthetic */ ApkChecksum ac(Object obj) {
        return (ApkChecksum) obj;
    }

    public static /* synthetic */ Font.Builder b(Font font) {
        return new Font.Builder(font);
    }

    public static /* bridge */ /* synthetic */ ContentInfo d(Object obj) {
        return (ContentInfo) obj;
    }

    public static /* synthetic */ ContentInfo.Builder t(ClipData clipData, int i) {
        return new ContentInfo.Builder(clipData, i);
    }
}
