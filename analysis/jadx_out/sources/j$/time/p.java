package j$.time;

import com.bykv.vk.component.ttvideo.player.C;
import j$.util.Objects;
import java.io.Externalizable;
import java.io.InvalidClassException;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.io.StreamCorruptedException;

/* loaded from: classes2.dex */
public final class p implements Externalizable {
    private static final long serialVersionUID = -7683839454370182990L;

    /* renamed from: a, reason: collision with root package name */
    public byte f20589a;

    /* renamed from: b, reason: collision with root package name */
    public Object f20590b;

    public p() {
    }

    public p(byte b2, Object obj) {
        this.f20589a = b2;
        this.f20590b = obj;
    }

    public static Object a(byte b2, ObjectInput objectInput) {
        switch (b2) {
            case 1:
                d dVar = d.f20512c;
                long readLong = objectInput.readLong();
                long readInt = objectInput.readInt();
                return d.i(j$.com.android.tools.r8.a.K(readLong, j$.com.android.tools.r8.a.O(readInt, C.NANOS_PER_SECOND)), (int) j$.com.android.tools.r8.a.N(readInt, C.NANOS_PER_SECOND));
            case 2:
                Instant instant = Instant.EPOCH;
                return Instant.D(objectInput.readLong(), objectInput.readInt());
            case 3:
                LocalDate localDate = LocalDate.f20430d;
                return LocalDate.L(objectInput.readInt(), objectInput.readByte(), objectInput.readByte());
            case 4:
                return i.M(objectInput);
            case 5:
                LocalDateTime localDateTime = LocalDateTime.f20435c;
                LocalDate localDate2 = LocalDate.f20430d;
                return LocalDateTime.F(LocalDate.L(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.M(objectInput));
            case 6:
                LocalDateTime localDateTime2 = LocalDateTime.f20435c;
                LocalDate localDate3 = LocalDate.f20430d;
                LocalDateTime F = LocalDateTime.F(LocalDate.L(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.M(objectInput));
                ZoneOffset L = ZoneOffset.L(objectInput);
                ZoneId zoneId = (ZoneId) a(objectInput.readByte(), objectInput);
                Objects.requireNonNull(F, "localDateTime");
                Objects.requireNonNull(L, "offset");
                Objects.requireNonNull(zoneId, "zone");
                if (!(zoneId instanceof ZoneOffset) || L.equals(zoneId)) {
                    return new ZonedDateTime(F, zoneId, L);
                }
                throw new IllegalArgumentException("ZoneId must match ZoneOffset");
            case 7:
                int i = u.f20631d;
                return ZoneId.D(objectInput.readUTF(), false);
            case 8:
                return ZoneOffset.L(objectInput);
            case 9:
                int i2 = o.f20586c;
                return new o(i.M(objectInput), ZoneOffset.L(objectInput));
            case 10:
                int i3 = OffsetDateTime.f20439c;
                LocalDate localDate4 = LocalDate.f20430d;
                return new OffsetDateTime(LocalDateTime.F(LocalDate.L(objectInput.readInt(), objectInput.readByte(), objectInput.readByte()), i.M(objectInput)), ZoneOffset.L(objectInput));
            case 11:
                int i4 = r.f20593b;
                return r.C(objectInput.readInt());
            case 12:
                int i5 = t.f20597c;
                int readInt2 = objectInput.readInt();
                byte readByte = objectInput.readByte();
                j$.time.temporal.a.YEAR.s(readInt2);
                j$.time.temporal.a.MONTH_OF_YEAR.s(readByte);
                return new t(readInt2, readByte);
            case 13:
                int i6 = m.f20582c;
                byte readByte2 = objectInput.readByte();
                byte readByte3 = objectInput.readByte();
                k F2 = k.F(readByte2);
                Objects.requireNonNull(F2, "month");
                j$.time.temporal.a.DAY_OF_MONTH.s(readByte3);
                if (readByte3 <= F2.E()) {
                    return new m(F2.getValue(), readByte3);
                }
                throw new a("Illegal value for DayOfMonth field, value " + ((int) readByte3) + " is not valid for month " + F2.name());
            case 14:
                Period period = Period.f20442d;
                int readInt3 = objectInput.readInt();
                int readInt4 = objectInput.readInt();
                int readInt5 = objectInput.readInt();
                return ((readInt3 | readInt4) | readInt5) == 0 ? Period.f20442d : new Period(readInt3, readInt4, readInt5);
            default:
                throw new StreamCorruptedException("Unknown serialized type");
        }
    }

    private Object readResolve() {
        return this.f20590b;
    }

    @Override // java.io.Externalizable
    public final void readExternal(ObjectInput objectInput) {
        byte readByte = objectInput.readByte();
        this.f20589a = readByte;
        this.f20590b = a(readByte, objectInput);
    }

    @Override // java.io.Externalizable
    public final void writeExternal(ObjectOutput objectOutput) {
        byte b2 = this.f20589a;
        Object obj = this.f20590b;
        objectOutput.writeByte(b2);
        switch (b2) {
            case 1:
                d dVar = (d) obj;
                objectOutput.writeLong(dVar.f20513a);
                objectOutput.writeInt(dVar.f20514b);
                return;
            case 2:
                Instant instant = (Instant) obj;
                objectOutput.writeLong(instant.f20428a);
                objectOutput.writeInt(instant.f20429b);
                return;
            case 3:
                LocalDate localDate = (LocalDate) obj;
                objectOutput.writeInt(localDate.f20432a);
                objectOutput.writeByte(localDate.f20433b);
                objectOutput.writeByte(localDate.f20434c);
                return;
            case 4:
                ((i) obj).R(objectOutput);
                return;
            case 5:
                LocalDateTime localDateTime = (LocalDateTime) obj;
                LocalDate localDate2 = localDateTime.f20437a;
                objectOutput.writeInt(localDate2.f20432a);
                objectOutput.writeByte(localDate2.f20433b);
                objectOutput.writeByte(localDate2.f20434c);
                localDateTime.f20438b.R(objectOutput);
                return;
            case 6:
                ZonedDateTime zonedDateTime = (ZonedDateTime) obj;
                LocalDateTime localDateTime2 = zonedDateTime.f20453a;
                LocalDate localDate3 = localDateTime2.f20437a;
                objectOutput.writeInt(localDate3.f20432a);
                objectOutput.writeByte(localDate3.f20433b);
                objectOutput.writeByte(localDate3.f20434c);
                localDateTime2.f20438b.R(objectOutput);
                zonedDateTime.f20454b.M(objectOutput);
                zonedDateTime.f20455c.G(objectOutput);
                return;
            case 7:
                objectOutput.writeUTF(((u) obj).f20632b);
                return;
            case 8:
                ((ZoneOffset) obj).M(objectOutput);
                return;
            case 9:
                o oVar = (o) obj;
                oVar.f20587a.R(objectOutput);
                oVar.f20588b.M(objectOutput);
                return;
            case 10:
                OffsetDateTime offsetDateTime = (OffsetDateTime) obj;
                LocalDateTime localDateTime3 = offsetDateTime.f20440a;
                LocalDate localDate4 = localDateTime3.f20437a;
                objectOutput.writeInt(localDate4.f20432a);
                objectOutput.writeByte(localDate4.f20433b);
                objectOutput.writeByte(localDate4.f20434c);
                localDateTime3.f20438b.R(objectOutput);
                offsetDateTime.f20441b.M(objectOutput);
                return;
            case 11:
                objectOutput.writeInt(((r) obj).f20594a);
                return;
            case 12:
                t tVar = (t) obj;
                objectOutput.writeInt(tVar.f20598a);
                objectOutput.writeByte(tVar.f20599b);
                return;
            case 13:
                m mVar = (m) obj;
                objectOutput.writeByte(mVar.f20583a);
                objectOutput.writeByte(mVar.f20584b);
                return;
            case 14:
                Period period = (Period) obj;
                objectOutput.writeInt(period.f20443a);
                objectOutput.writeInt(period.f20444b);
                objectOutput.writeInt(period.f20445c);
                return;
            default:
                throw new InvalidClassException("Unknown serialized type");
        }
    }
}
