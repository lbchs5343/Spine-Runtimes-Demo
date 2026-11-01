package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public enum ekx implements axb {
    dq("QUESTION", "?"),
    f15720d("COLON", ":"),
    ox("DOUBLE_AMP", "&&"),
    p("DOUBLE_BAR", "||"),
    s("EQ", "=="),
    iw("GT", ">"),
    mn("LT", "<"),
    ia("LT_EQ", "<="),
    kk("GT_EQ", ">="),
    o("NOT_EQ", "!="),
    no("PLUS", "+"),
    ig("MINUS", "-"),
    mp("MULTI", "*"),
    q("DIVISION", "/"),
    jy("MOD", "%");


    /* renamed from: b, reason: collision with root package name */
    public static final HashMap f15718b = new HashMap(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);

    /* renamed from: c, reason: collision with root package name */
    public static final HashSet f15719c = new HashSet();
    private final String cd;
    private final int gh;

    static {
        for (ekx ekxVar : values()) {
            f15718b.put(ekxVar.cd, ekxVar);
            f15719c.add(ekxVar);
        }
    }

    ekx(String str, String str2) {
        this.cd = str2;
        this.gh = r2;
    }

    public final int e() {
        return this.gh;
    }

    public final String f() {
        return this.cd;
    }
}
