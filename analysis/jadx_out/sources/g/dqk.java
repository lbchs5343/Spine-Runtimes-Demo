package g;

import android.text.TextUtils;
import com.bytedance.android.live.base.api.push.ILivePush;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class dqk {

    /* renamed from: a, reason: collision with root package name */
    public static final HashSet f14639a = new HashSet(Arrays.asList("convert", "dislike", "openAppPermission", "openAppPolicy", "openPrivacy", "openAppFunction", ILivePush.ClickType.CLOSE, "skip", "videoControl", "pauseVideo", "resumeVideo", "muteVideo", "preventEvent"));

    /* renamed from: b, reason: collision with root package name */
    public final String f14640b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f14641c;

    /* renamed from: d, reason: collision with root package name */
    public final blw f14642d;

    /* renamed from: e, reason: collision with root package name */
    public final dlv f14643e;

    /* renamed from: f, reason: collision with root package name */
    public final HashMap f14644f;

    public dqk(dlv dlvVar, String str, blw blwVar, int i) {
        this.f14641c = i;
        this.f14643e = dlvVar;
        this.f14642d = blwVar;
        this.f14640b = str;
        this.f14644f = blwVar.f11808c;
    }

    public void g(dlv dlvVar) {
        if (dlvVar == null) {
            return;
        }
        for (String str : this.f14644f.keySet()) {
            if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, TTDownloadField.TT_ID)) {
                dlvVar.dq(str, (String) this.f14644f.get(str));
            }
        }
        dlvVar.kx();
        dlvVar.p();
    }
}
