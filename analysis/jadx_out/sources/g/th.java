package g;

/* loaded from: classes.dex */
public class th implements cng {

    /* renamed from: a, reason: collision with root package name */
    public final String f20031a;

    /* renamed from: b, reason: collision with root package name */
    public String f20032b;

    public th(CharSequence charSequence, String str) {
        this.f20031a = str;
        this.f20032b = eyt.bp(charSequence);
    }

    public th(String str, Boolean bool) {
        this.f20031a = str;
        if (bool == null) {
            this.f20032b = "-";
        } else {
            this.f20032b = bool.booleanValue() ? "true" : "false";
        }
    }

    public th(String str, String str2) {
        this.f20031a = str;
        this.f20032b = str2;
    }

    public th(String str, boolean z) {
        this.f20031a = str;
        this.f20032b = z ? "true" : "false";
    }
}
