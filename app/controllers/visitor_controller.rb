class VisitorController < ApplicationController

  def new
    @page_title = "Welcome!"
    respond_to do |format|
	format.html
    end
  end

  def specialization
    @page_title = "Specializing in " + fillInWord( params[:specialization] )
    @layout = 'layouts/specialization'
    @specialization_type = fillInWord( params[:specialization] )
    @specialization_top = getSpecializationTop( params[:specialization] )
    @specialization_bottom = getSpecializationBottom( params[:specialization] )
    
    respond_to do |format|
      format.js
    end
  end

  def navbar
    @page_title = fillInWord( params[:link] )
    @layout_left = 'layouts/' + params[:link] + "_left"
    @layout_right = 'layouts/' + params[:link] + "_right"
    
    respond_to do |format|
      format.js
    end
  end

  private

  def fillInWord (ajaxData)
    if ajaxData == 'trauma'
      return 'Trauma'
    elsif ajaxData == 'anxiety'
      return 'Anxiety'
    elsif ajaxData == 'borderline'
      return 'Borderline Personality Disorder'
    elsif ajaxData == 'grief'
      return 'Grief and Loss'
    elsif ajaxData == 'life'
      return 'Life Tranisitions'
    elsif ajaxData == 'relationship'
      return 'Relationship Issues'
    elsif ajaxData == 'home'
      return 'Welcome!'
    elsif ajaxData == 'why_therapy'
      return 'Why Therapy?'
    elsif ajaxData == 'about_me'
      return 'About Me'
    elsif ajaxData == 'contact'
      return 'Contact Information'
    end
  end
	
  def getSpecializationBottom (ajaxData)
    if ajaxData == 'trauma'
      return 'Trauma-focused therapy will allow you to discuss the traumatic event or events and explore how the trauma is impacting your life and possibly altering your view of yourself, the world, and others.  Although it is not possible to undo or remove trauma from your story, it is possible to take some of the intensity out of the memory and move toward the event being a part of your story, not your entire story.  My goal in doing trauma work is to assist you in looking at the difficult and painful experiences you have survived to remove the power these traumas have over you and to begin to re-incorporate other positive experiences and memories back into your life.'
    elsif ajaxData == 'anxiety'
      return 'In treating an anxiety disorder, I will work with you to face the issues you fear, identify and challenge the faulty thoughts that fuel this fear, and help you to re-engage in your life without the paralyzing impact of your anxiety.'
    elsif ajaxData == 'borderline'
      return 'I believe that the therapeutic relationship provides a safe space within which a new and healthy experience of attachment to another person can develop and old patterns of responding to fear can be challenged and possibly changed.  We will examine the underlying causes of your distress and how your early relationships impact your ability to form healthy connections today.'
    elsif ajaxData == 'grief'
      return 'I will work with you to identify what is getting in the way of your grief resolving naturally, assist you in experiencing and working through the grief, and help you to begin moving toward the healing and peace that exists on the other side of grief.'
    elsif ajaxData == 'life'
      return 'Even positive transitions can bring about a sense of loss as you let go of who you were prior to the change and discover who you are now.  In therapy, we will gain an understanding of what the loss is and the emotions attached to it, making room for the enjoyment and appreciation for the transition into this next phase of your life.'
    elsif ajaxData == 'relationship'
      return 'I believe you can break out of unhealthy patterns of relating and create fulfilling relationships with some understanding and guidance.  I view the therapeutic relationship as critical to this process as it provides a safe and healthy space for trying out new ways of relating and connecting with another person.'
    end
  end

  def getSpecializationTop (ajaxData)
    if ajaxData == 'trauma'
      return 'Trauma is defined as a negative event that is typically sudden, unexpected, and outside of the norm of what people expect to happen in their lives.  Traumatic events often result in feelings of helplessness, terror, horror, and disbelief.  Following a trauma, you are faced with the task of making sense of what has happened and fitting the event into your belief system or changing your belief system to incorporate the new information introduced into your life by the trauma.  However you approach and deal with the aftermath of trauma, your experience of the world is often changed and can be confusing.'
    elsif ajaxData == 'anxiety'
      return 'Anxiety is a common problem and can show up in a variety of ways in your life.  Low levels of anxiety can motivate you to accomplish what you need and protect yourself in danger.  However, high levels of anxiety can become debilitating, keeping you from fully engaging in your life out of fear.  I have experience working with a variety of anxiety disorders, including Posttraumatic Stress Disorder, Obsessive Compulsive Disorder, Panic Disorder, and Generalized Anxiety disorder.'
    elsif ajaxData == 'borderline'
      return 'Borderline Personality Disorder is an often misunderstood and stigmatized disorder that can develop in individuals who experience ongoing neglect, abuse, and/or a denial of their reality.  Growing up in a traumatic and/or neglectful home frequently leads to a sense of emptiness and extreme fear of being hurt, rejected, or abandoned.  Some individuals with BPD have learned to avoid relationships altogether as they have been taught that relationships cause pain. Although they may have learned to remain isolated and disconnected from others, the need for interpersonal connection and closeness does not go away. Others diagnosed with BPD have the opposite response in interpersonal relationships and tend to cling to others when fearing rejection and abandonment, believing that keeping the other person close will decrease the likelihood of being left.'
    elsif ajaxData == 'grief'
      return 'Loss occurs throughout our lives and brings about feelings of sadness and grief.  The loss may be due to death, divorce, loss of employment, or many other experiences, but grief accompanies all loss.  Grief is a natural process we all go through at some point in our lives, but becoming stuck in the grieving process can keep you from living your life following a significant loss.'
    elsif ajaxData == 'life'
      return 'Life is full of changes and transitions that can bring about a wide range of emotional responses.  Some transitions, such as a divorce, loss of a job, or a move, are expected to be difficult and can bring about feelings of sadness and fear.  Other transitions, such as becoming a parent, beginning a new job, or starting a new relationship, are often expected to be exciting changes and can take an individual by surprise when feelings of fear, sadness, or anger are present.'
    elsif ajaxData == 'relationship'
      return 'I believe we are born relational people and thrive within healthy relationships.  However, we are not all taught how to create healthy relationships and may even have people in our lives who are unhealthy or toxic for us.  People who have not been taught how to interact with others in effective ways tend to repeat maladaptive patterns of behaving in relationships without recognizing what they are doing.'
    end	
  end
end

