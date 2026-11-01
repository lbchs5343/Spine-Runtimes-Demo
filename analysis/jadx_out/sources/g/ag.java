package g;

import java.util.HashMap;
import java.util.Locale;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'CODE' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class ag {
    public static final ag APK;
    public static final ag ARCHIVE;
    public static final ag ARSC;
    public static final ag CODE;
    public static final ag FONT;
    public static final ag HTML;
    public static final ag IMG;
    public static final ag JSON;
    public static final ag LIB;
    public static final ag MANIFEST;
    public static final ag SOUNDS;
    public static final ag TEXT;
    public static final ag UNKNOWN;
    public static final ag UNKNOWN_BIN;
    public static final ag VIDEOS;
    public static final ag XML;

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f10167a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ ag[] f10168b;
    private final ue contentType;
    private final String[] exts;

    static {
        ue ueVar = ue.CONTENT_BINARY;
        ag agVar = new ag("CODE", 0, ueVar, ".dex", ".jar", ".class");
        CODE = agVar;
        ue ueVar2 = ue.CONTENT_TEXT;
        ag agVar2 = new ag("XML", 1, ueVar2, ".xml");
        XML = agVar2;
        ag agVar3 = new ag("ARSC", 2, ueVar2, ".arsc");
        ARSC = agVar3;
        ag agVar4 = new ag("APK", 3, ueVar, ".apk", ".apkm", ".apks");
        APK = agVar4;
        ag agVar5 = new ag("FONT", 4, ueVar, ".ttf", ".ttc", ".otf");
        FONT = agVar5;
        ag agVar6 = new ag("IMG", 5, ueVar, ".png", ".gif", ".jpg", ".jpeg", ".webp", ".bmp", ".tiff");
        IMG = agVar6;
        ag agVar7 = new ag("ARCHIVE", 6, ueVar, ".zip", ".rar", ".7zip", ".7z", ".arj", ".tar", ".gzip", ".bzip", ".bzip2", ".cab", ".cpio", ".ar", ".gz", ".tgz", ".bz2");
        ARCHIVE = agVar7;
        ag agVar8 = new ag("VIDEOS", 7, ueVar, ".mp4", ".mkv", ".webm", ".avi", ".flv", ".3gp");
        VIDEOS = agVar8;
        ag agVar9 = new ag("SOUNDS", 8, ueVar, ".aac", ".ogg", ".opus", ".mp3", ".wav", ".wma", ".mid", ".midi");
        SOUNDS = agVar9;
        ag agVar10 = new ag("JSON", 9, ueVar2, ".json");
        JSON = agVar10;
        ag agVar11 = new ag("TEXT", 10, ueVar2, ".txt", ".ini", ".conf", ".yaml", ".properties", ".js", ".java", ".kt", ".md");
        TEXT = agVar11;
        ag agVar12 = new ag("HTML", 11, ueVar2, ".html", ".htm");
        HTML = agVar12;
        ag agVar13 = new ag("LIB", 12, ueVar, ".so");
        LIB = agVar13;
        ag agVar14 = new ag("MANIFEST", 13, ueVar2, new String[0]);
        MANIFEST = agVar14;
        ag agVar15 = new ag("UNKNOWN_BIN", 14, ueVar, ".bin");
        UNKNOWN_BIN = agVar15;
        ag agVar16 = new ag("UNKNOWN", 15, ue.CONTENT_UNKNOWN, new String[0]);
        UNKNOWN = agVar16;
        f10168b = new ag[]{agVar, agVar2, agVar3, agVar4, agVar5, agVar6, agVar7, agVar8, agVar9, agVar10, agVar11, agVar12, agVar13, agVar14, agVar15, agVar16};
        f10167a = new HashMap();
        for (ag agVar17 : values()) {
            for (String str : agVar17.exts) {
                if (((ag) f10167a.put(str, agVar17)) != null) {
                    throw new gck(tn.x("Duplicate extension in ResourceType: ", str));
                }
            }
        }
    }

    public ag(String str, int i, ue ueVar, String... strArr) {
        this.contentType = ueVar;
        this.exts = strArr;
    }

    public static ag c(String str) {
        if (str.endsWith("/resources.pb")) {
            return ARSC;
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf != -1) {
            ag agVar = (ag) f10167a.get(str.substring(lastIndexOf).toLowerCase(Locale.ROOT));
            if (agVar != null) {
                return (agVar == XML && str.equals("AndroidManifest.xml")) ? MANIFEST : agVar;
            }
        }
        return UNKNOWN;
    }

    public static ag valueOf(String str) {
        return (ag) Enum.valueOf(ag.class, str);
    }

    public static ag[] values() {
        return (ag[]) f10168b.clone();
    }
}
