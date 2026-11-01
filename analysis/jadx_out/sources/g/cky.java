package g;

/* loaded from: classes.dex */
public final class cky {
    public static String a(hdx hdxVar) {
        String obj = hdxVar.getClass().getGenericInterfaces()[0].toString();
        return obj.startsWith("kotlin.jvm.functions.") ? obj.substring(21) : obj;
    }
}
