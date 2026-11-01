package j$.time.chrono;

import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import j$.time.LocalDate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class w extends AbstractC0260a implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final w f20501c = new w();
    private static final long serialVersionUID = 459996390165777884L;

    private w() {
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.chrono.m
    public final String h() {
        return "Japanese";
    }

    public final j$.time.temporal.u j(j$.time.temporal.a aVar) {
        switch (v.f20500a[aVar.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                throw new j$.time.temporal.t("Unsupported field: " + aVar);
            case 5:
                z[] zVarArr = z.f20508e;
                int i = zVarArr[zVarArr.length - 1].f20510b.f20432a;
                int i2 = 1000000000 - zVarArr[zVarArr.length - 1].f20510b.f20432a;
                int i3 = zVarArr[0].f20510b.f20432a;
                int i4 = 1;
                while (true) {
                    z[] zVarArr2 = z.f20508e;
                    if (i4 >= zVarArr2.length) {
                        return j$.time.temporal.u.f(i2, 999999999 - i);
                    }
                    z zVar = zVarArr2[i4];
                    i2 = Math.min(i2, (zVar.f20510b.f20432a - i3) + 1);
                    i3 = zVar.f20510b.f20432a;
                    i4++;
                }
            case 6:
                z zVar2 = z.f20507d;
                long j = j$.time.temporal.a.DAY_OF_YEAR.f20602b.f20629c;
                for (z zVar3 : z.f20508e) {
                    j = Math.min(j, ((zVar3.f20510b.J() ? MediaPlayer.MEDIA_PLAYER_OPTION_LAST_VIDEO_DECODE_TIME : MediaPlayer.MEDIA_PLAYER_OPTION_LAST_AUDIO_DEMUX_TIME) - zVar3.f20510b.H()) + 1);
                    if (zVar3.n() != null) {
                        j = Math.min(j, zVar3.n().f20510b.H() - 1);
                    }
                }
                return j$.time.temporal.u.f(j, j$.time.temporal.a.DAY_OF_YEAR.f20602b.f20630d);
            case 7:
                return j$.time.temporal.u.e(y.f20503d.f20432a, 999999999L);
            case 8:
                long j2 = z.f20507d.f20509a;
                z[] zVarArr3 = z.f20508e;
                return j$.time.temporal.u.e(j2, zVarArr3[zVarArr3.length - 1].f20509a);
            default:
                return aVar.f20602b;
        }
    }

    @Override // j$.time.chrono.m
    public final String n() {
        return "japanese";
    }

    @Override // j$.time.chrono.m
    public final n q(int i) {
        return z.q(i);
    }

    @Override // j$.time.chrono.m
    public final InterfaceC0261b t(j$.time.temporal.n nVar) {
        return nVar instanceof y ? (y) nVar : new y(LocalDate.E(nVar));
    }

    public Object writeReplace() {
        return new F((byte) 1, this);
    }
}
