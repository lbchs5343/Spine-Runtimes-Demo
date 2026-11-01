package g;

import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import java.util.HashMap;

/* loaded from: classes.dex */
public enum abo implements axb {
    LEFT_PAREN("("),
    RIGHT_PAREN(")"),
    LEFT_BRACKET("["),
    RIGHT_BRACKET("]"),
    COMMA(",");


    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f9929a;
    private final String mn;

    static {
        HashMap hashMap = new HashMap(TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME);
        f9929a = hashMap;
        for (abo aboVar : hashMap.values()) {
            f9929a.put(aboVar.mn, aboVar);
        }
    }

    abo(String str) {
        this.mn = str;
    }

    public final String c() {
        return this.mn;
    }
}
