package g;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;

/* loaded from: classes.dex */
public final class fcn {
    public final int ad;
    public final int ae;
    public final /* synthetic */ int af;

    /* renamed from: g, reason: collision with root package name */
    public static final fcn f16575g = new fcn(1, 0, 10);
    public static final fcn j = new fcn(1, 2, 21);
    public static final fcn p = new fcn(1, 1, 23);

    /* renamed from: ab, reason: collision with root package name */
    public static final fcn f16569ab = new fcn(1, 1, 24);

    /* renamed from: b, reason: collision with root package name */
    public static final fcn f16570b = new fcn(1, 0, 25);
    public static final fcn t = new fcn(2, 0, 26);
    public static final fcn u = new fcn(2, 2, 27);

    /* renamed from: c, reason: collision with root package name */
    public static final fcn f16571c = new fcn(2, 1, 28);
    public static final fcn i = new fcn(2, 1, 0);
    public static final fcn s = new fcn(2, 1, 1);

    /* renamed from: f, reason: collision with root package name */
    public static final fcn f16574f = new fcn(2, 1, 2);

    /* renamed from: d, reason: collision with root package name */
    public static final fcn f16572d = new fcn(2, 3, 3);
    public static final fcn r = new fcn(2, 2, 4);
    public static final fcn v = new fcn(2, 2, 5);
    public static final fcn ac = new fcn(2, 2, 6);
    public static final fcn q = new fcn(2, 2, 7);
    public static final fcn x = new fcn(3, 0, 8);
    public static final fcn k = new fcn(3, 2, 9);
    public static final fcn n = new fcn(3, 1, 11);
    public static final fcn o = new fcn(3, 1, 12);
    public static final fcn aa = new fcn(3, 1, 13);

    /* renamed from: e, reason: collision with root package name */
    public static final fcn f16573e = new fcn(3, -1, 14);

    /* renamed from: a, reason: collision with root package name */
    public static final fcn f16568a = new fcn(3, -1, 15);
    public static final fcn w = new fcn(4, -1, 16);
    public static final fcn h = new fcn(4, -1, 17);
    public static final fcn m = new fcn(5, 1, 18);
    public static final fcn l = new fcn(-1, -1, 19);
    public static final fcn z = new fcn(-1, -1, 20);
    public static final fcn y = new fcn(-1, -1, 22);

    public fcn(int i2, int i3, int i4) {
        this.af = i4;
        this.ad = i2;
        this.ae = i3;
    }

    public static int ag(int i2) {
        return (i2 >> 12) & 15;
    }

    public static void ah(akh akhVar, int i2, dsg dsgVar) {
        int ag = ag(i2);
        int q2 = dsgVar.q();
        int q3 = dsgVar.q();
        int[] iArr = akhVar.x;
        iArr[0] = q3 & 15;
        iArr[1] = (q3 >> 4) & 15;
        iArr[2] = ak(q3);
        iArr[3] = ag(q3);
        iArr[4] = ak(i2);
        akhVar.z = ag;
        akhVar.w = q2;
    }

    public static int ai(int i2) {
        return (i2 >> 8) & MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
    }

    public static void aj(akh akhVar, int i2, dsg dsgVar) {
        int ai = ai(i2);
        int q2 = dsgVar.q();
        int q3 = dsgVar.q();
        int[] iArr = akhVar.x;
        if (iArr.length < ai) {
            iArr = new int[ai];
            akhVar.x = iArr;
        }
        for (int i3 = 0; i3 < ai; i3++) {
            iArr[i3] = q3;
            q3++;
        }
        akhVar.z = ai;
        akhVar.w = q2;
    }

    public static int ak(int i2) {
        return (i2 >> 8) & 15;
    }

    private final void al(akh akhVar, int i2, dsg dsgVar) {
    }
}
