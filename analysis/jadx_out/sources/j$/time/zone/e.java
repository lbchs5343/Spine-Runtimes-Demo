package j$.time.zone;

import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import j$.time.ZoneOffset;
import j$.time.k;
import j$.util.Objects;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class e implements Serializable {
    private static final long serialVersionUID = 6889046316657758795L;

    /* renamed from: a, reason: collision with root package name */
    public final k f20644a;

    /* renamed from: b, reason: collision with root package name */
    public final byte f20645b;

    /* renamed from: c, reason: collision with root package name */
    public final j$.time.c f20646c;

    /* renamed from: d, reason: collision with root package name */
    public final j$.time.i f20647d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f20648e;

    /* renamed from: f, reason: collision with root package name */
    public final d f20649f;

    /* renamed from: g, reason: collision with root package name */
    public final ZoneOffset f20650g;
    public final ZoneOffset h;
    public final ZoneOffset i;

    public e(k kVar, int i, j$.time.c cVar, j$.time.i iVar, boolean z, d dVar, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.f20644a = kVar;
        this.f20645b = (byte) i;
        this.f20646c = cVar;
        this.f20647d = iVar;
        this.f20648e = z;
        this.f20649f = dVar;
        this.f20650g = zoneOffset;
        this.h = zoneOffset2;
        this.i = zoneOffset3;
    }

    public static e a(DataInput dataInput) {
        d dVar;
        j$.time.i iVar;
        int readInt = dataInput.readInt();
        k F = k.F(readInt >>> 28);
        int i = ((264241152 & readInt) >>> 22) - 32;
        int i2 = (3670016 & readInt) >>> 19;
        j$.time.c C = i2 == 0 ? null : j$.time.c.C(i2);
        int i3 = (507904 & readInt) >>> 14;
        d dVar2 = d.values()[(readInt & 12288) >>> 12];
        int i4 = (readInt & 4080) >>> 4;
        int i5 = (readInt & 12) >>> 2;
        int i6 = readInt & 3;
        if (i3 == 31) {
            long readInt2 = dataInput.readInt();
            j$.time.i iVar2 = j$.time.i.f20571e;
            j$.time.temporal.a.SECOND_OF_DAY.s(readInt2);
            int i7 = (int) (readInt2 / 3600);
            dVar = dVar2;
            long j = readInt2 - (i7 * 3600);
            iVar = j$.time.i.D(i7, (int) (j / 60), (int) (j - (r8 * 60)), 0);
        } else {
            dVar = dVar2;
            int i8 = i3 % 24;
            j$.time.i iVar3 = j$.time.i.f20571e;
            j$.time.temporal.a.HOUR_OF_DAY.s(i8);
            iVar = j$.time.i.h[i8];
        }
        ZoneOffset J = ZoneOffset.J(i4 == 255 ? dataInput.readInt() : (i4 - 128) * AVMDLDataLoader.KeyIsMaxIpCountEachDomain);
        ZoneOffset J2 = ZoneOffset.J(i5 == 3 ? dataInput.readInt() : (i5 * 1800) + J.f20451b);
        ZoneOffset J3 = ZoneOffset.J(i6 == 3 ? dataInput.readInt() : (i6 * 1800) + J.f20451b);
        boolean z = i3 == 24;
        Objects.requireNonNull(F, "month");
        Objects.requireNonNull(iVar, "time");
        Objects.requireNonNull(dVar, "timeDefnition");
        Objects.requireNonNull(J, "standardOffset");
        Objects.requireNonNull(J2, "offsetBefore");
        Objects.requireNonNull(J3, "offsetAfter");
        if (i < -28 || i > 31 || i == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (z && !iVar.equals(j$.time.i.f20573g)) {
            throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
        }
        if (iVar.f20577d == 0) {
            return new e(F, i, C, iVar, z, dVar, J, J2, J3);
        }
        throw new IllegalArgumentException("Time's nano-of-second must be zero");
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private Object writeReplace() {
        return new a((byte) 3, this);
    }

    public final void b(DataOutput dataOutput) {
        int O = this.f20648e ? 86400 : this.f20647d.O();
        int i = this.f20650g.f20451b;
        int i2 = this.h.f20451b - i;
        int i3 = this.i.f20451b - i;
        byte b2 = O % 3600 == 0 ? this.f20648e ? (byte) 24 : this.f20647d.f20574a : (byte) 31;
        int i4 = i % AVMDLDataLoader.KeyIsMaxIpCountEachDomain == 0 ? (i / AVMDLDataLoader.KeyIsMaxIpCountEachDomain) + TTDownloadField.CALL_DOWNLOAD_MODEL_SET_APP_NAME : MediaPlayer.MEDIA_PLAYER_OPTION_VOICE_STREAM_TYPE;
        int i5 = (i2 == 0 || i2 == 1800 || i2 == 3600) ? i2 / 1800 : 3;
        int i6 = (i3 == 0 || i3 == 1800 || i3 == 3600) ? i3 / 1800 : 3;
        j$.time.c cVar = this.f20646c;
        dataOutput.writeInt((this.f20644a.getValue() << 28) + ((this.f20645b + 32) << 22) + ((cVar == null ? 0 : cVar.getValue()) << 19) + (b2 << 14) + (this.f20649f.ordinal() << 12) + (i4 << 4) + (i5 << 2) + i6);
        if (b2 == 31) {
            dataOutput.writeInt(O);
        }
        if (i4 == 255) {
            dataOutput.writeInt(i);
        }
        if (i5 == 3) {
            dataOutput.writeInt(this.h.f20451b);
        }
        if (i6 == 3) {
            dataOutput.writeInt(this.i.f20451b);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof e) {
            e eVar = (e) obj;
            if (this.f20644a == eVar.f20644a && this.f20645b == eVar.f20645b && this.f20646c == eVar.f20646c && this.f20649f == eVar.f20649f && this.f20647d.equals(eVar.f20647d) && this.f20648e == eVar.f20648e && this.f20650g.equals(eVar.f20650g) && this.h.equals(eVar.h) && this.i.equals(eVar.i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int O = ((this.f20647d.O() + (this.f20648e ? 1 : 0)) << 15) + (this.f20644a.ordinal() << 11) + ((this.f20645b + 32) << 5);
        j$.time.c cVar = this.f20646c;
        return ((this.f20650g.f20451b ^ (this.f20649f.ordinal() + (O + ((cVar == null ? 7 : cVar.ordinal()) << 2)))) ^ this.h.f20451b) ^ this.i.f20451b;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("TransitionRule[");
        sb.append(this.i.f20451b - this.h.f20451b > 0 ? "Gap " : "Overlap ");
        sb.append(this.h);
        sb.append(" to ");
        sb.append(this.i);
        sb.append(", ");
        j$.time.c cVar = this.f20646c;
        if (cVar != null) {
            byte b2 = this.f20645b;
            if (b2 == -1) {
                sb.append(cVar.name());
                sb.append(" on or before last day of ");
                sb.append(this.f20644a.name());
            } else if (b2 < 0) {
                sb.append(cVar.name());
                sb.append(" on or before last day minus ");
                sb.append((-this.f20645b) - 1);
                sb.append(" of ");
                sb.append(this.f20644a.name());
            } else {
                sb.append(cVar.name());
                sb.append(" on or after ");
                sb.append(this.f20644a.name());
                sb.append(' ');
                sb.append((int) this.f20645b);
            }
        } else {
            sb.append(this.f20644a.name());
            sb.append(' ');
            sb.append((int) this.f20645b);
        }
        sb.append(" at ");
        sb.append(this.f20648e ? "24:00" : this.f20647d.toString());
        sb.append(" ");
        sb.append(this.f20649f);
        sb.append(", standard offset ");
        sb.append(this.f20650g);
        sb.append(']');
        return sb.toString();
    }
}
