package g;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class bgr extends ade {
    @Override // g.ade
    public final boolean h(String str) {
        return (TextUtils.isEmpty(str) || str.contains("/") || str.equals(".") || str.equals("..")) ? false : true;
    }
}
