package g;

import com.bykv.vk.component.ttvideo.LiveConfigKey;

/* loaded from: classes3.dex */
public enum aqt {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC(LiveConfigKey.QUIC);

    public static final ie Companion = new ie();
    private final String protocol;

    aqt(String str) {
        this.protocol = str;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.protocol;
    }
}
