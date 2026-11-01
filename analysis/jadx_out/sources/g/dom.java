package g;

/* loaded from: classes.dex */
public enum dom {
    APP(""),
    CORE("android.jar"),
    ANDROID_CAR("android.car.jar"),
    APACHE_HTTP_LEGACY_CLIENT("org.apache.http.legacy.jar");

    private final String jarFile;

    dom(String str) {
        this.jarFile = str;
    }
}
