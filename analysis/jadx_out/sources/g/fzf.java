package g;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class fzf {
    public static final fzf BLACK;
    public static final fzf GRAY;
    public static final fzf WHITE;

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ fzf[] f17696a;

    static {
        fzf fzfVar = new fzf("WHITE", 0);
        WHITE = fzfVar;
        fzf fzfVar2 = new fzf("GRAY", 1);
        GRAY = fzfVar2;
        fzf fzfVar3 = new fzf("BLACK", 2);
        BLACK = fzfVar3;
        f17696a = new fzf[]{fzfVar, fzfVar2, fzfVar3};
    }

    public static fzf valueOf(String str) {
        return (fzf) Enum.valueOf(fzf.class, str);
    }

    public static fzf[] values() {
        return (fzf[]) f17696a.clone();
    }
}
