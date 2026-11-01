package g;

import android.os.Build;
import com.bytedance.sdk.openadsdk.TTAdConstant;

/* loaded from: classes3.dex */
public abstract class dr {

    /* renamed from: a, reason: collision with root package name */
    public static final int f14661a;

    static {
        f14661a = Build.VERSION.SDK_INT >= 23 ? TTAdConstant.KEY_CLICK_AREA : 0;
    }
}
