<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<div class="container-fluid">
    <div class="table-wrap">
        <table class="table">
            <thead style="background-color: #ebedeb">
                <tr>
                  <th>Category</th>
                                            <th>Type</th>
                                            <th>part</th>
                                            <th>Weight</th>
                                            <th>Completion criteria</th>
                                            <th>duration</th>
                                            <th>clo</th>
                                            <th>Question type</th>
                                            <th>No question</th>
                                            <th>knowledge_and_skill</th>
                                            <th>grading_guide</th>
                                            <th>note</th>
                                            <th>Syllabus ID</th>
                                            <th>Note</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${listAssessment}" var="i">
                    <tr>
                       <td>${i.type}</td>
                                                <td>${i.part}</td>
                                                <td>${i.weight}</td>
                                                <td>${i.completionCriteria}</td>
                                                <td>${i.duration}</td>
                                                <td>${i.clo}</td>

                                                <td>${i.questionType}</td>
                                                <td>${i.noQuestion}</td>
                                                <td>${i.knowledgeAndSkill}</td>
                                                <td>${i.gradingGuide}</td>
                                                <td>${i.note}</td>
                                                 

                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>
<div class="float-end">
    <p style="color: blueviolet; font-weight: bold">Total LO: ${requestScope.count}</p>
</div>

