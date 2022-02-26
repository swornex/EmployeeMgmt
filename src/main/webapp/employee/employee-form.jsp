<%@ include file="/templates/header.jsp" %>

<h2 class="text-center mt-4">Add Employee</h2>
<div class="container w-50 mr-0">
    <form action="employee-form" method="post">
        <input type="hidden" value="${employee.id}" name="id">
        <div class="mb-3">
            <label class="form-label">Name:</label>
            <input type="text" class="form-control" value="${employee.name}" placeholder="John Doe" name="name">
        </div>
        <div class="mb-3">
            <label class="form-label">Contact:</label>
            <input type="text" class="form-control" value="${employee.contact}" placeholder="9801000000" name="contact">
        </div>
        <div class="mb-3">
            <label class="form-label">Address: </label>
            <input type="text" class="form-control" value="${employee.address}" placeholder="Putalisadak"
                   name="address">
        </div>
        <div class="mb-3">
            <label class="form-label">Age:</label>
            <input type="text" class="form-control" value="${employee.age}" placeholder="28" name="age">
        </div>
        <div class="mb-3">
            <label class="form-label">Department Id:</label>
            <select name="departmentId" class="form-select">
                <option disabled ${empDepartment != null ? "" : "selected"}> --- Select ID ---</option>
                <c:forEach items="${departments}" var="department">
                    <option ${empDepartment == department.id ? "selected" : ""}
                            value="${department.id}">${department.id} - ${department.name}</option>
                </c:forEach>
            </select>
        </div>
        <button type="submit" class="btn btn-primary mb-4">${action}</button>
    </form>
</div>

<c:remove var="empDepartment" scope="session"/>

<%@ include file="/templates/footer.jsp" %>
