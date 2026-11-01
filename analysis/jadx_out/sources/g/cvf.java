package g;

/* loaded from: classes.dex */
public enum cvf {
    dq("UNKNOWN_EVENT", "UNKNOWN_EVENT"),
    f13576d("TAP_EVENT", "onTap"),
    ox("LONG_TAP_EVENT", "onLongTap"),
    p("SHAKE_EVENT", "onShake"),
    s("TWIST_EVENT", "onTwist"),
    iw("SLIDE_EVENT", "onSlide"),
    mn("EXPOSURE_EVENT", "onExposure"),
    ia("SCROLL_EVENT", "onScroll"),
    kk("PULL_TO_REFRESH_EVENT", "onPullToRefresh"),
    o("LOAD_MORE_EVENT", "onLoadMore"),
    no("TIMER", "onTimer"),
    ig("DELAY", "onDelay"),
    mp("ANIMATION", "onAnimation"),
    q("VIDEO_PROGRESS", "onVideoProgress"),
    jy("VIDEO_PAUSE", "onVideoPause"),
    f13577f("VIDEO_RESUME", "onVideoResume"),
    fw("VIDEO_FINISH", "onVideoFinish"),
    cd("VIDEO_PLAY", "onVideoPlay"),
    gh("DOWN_EVENT", "onDown"),
    r("RENDER_SUCCESS", "onRenderSuccess");

    private String i;
    private int le;

    cvf(String str, String str2) {
        this.i = str2;
        this.le = r2;
    }

    public static cvf b(String str) {
        for (cvf cvfVar : values()) {
            if (cvfVar.i.equals(str)) {
                return cvfVar;
            }
        }
        return dq;
    }

    public int getType() {
        return this.le;
    }
}
