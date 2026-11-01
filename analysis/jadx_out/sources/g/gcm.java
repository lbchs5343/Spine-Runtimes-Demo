package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class gcm {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ gcm[] f17890a;

    /* renamed from: d, reason: collision with root package name */
    public static final gcm f17891d;
    public static final gcm dq;
    public static final gcm iw;
    public static final gcm ox;
    public static final gcm p;
    public static final gcm s;

    static {
        gcm gcmVar = new gcm("SET_ANIMATION", 0);
        dq = gcmVar;
        gcm gcmVar2 = new gcm("SET_PROGRESS", 1);
        f17891d = gcmVar2;
        gcm gcmVar3 = new gcm("SET_REPEAT_MODE", 2);
        ox = gcmVar3;
        gcm gcmVar4 = new gcm("SET_REPEAT_COUNT", 3);
        p = gcmVar4;
        gcm gcmVar5 = new gcm("SET_IMAGE_ASSETS", 4);
        s = gcmVar5;
        gcm gcmVar6 = new gcm("PLAY_OPTION", 5);
        iw = gcmVar6;
        f17890a = new gcm[]{gcmVar, gcmVar2, gcmVar3, gcmVar4, gcmVar5, gcmVar6};
    }

    public static gcm valueOf(String str) {
        return (gcm) Enum.valueOf(gcm.class, str);
    }

    public static gcm[] values() {
        return (gcm[]) f17890a.clone();
    }
}
